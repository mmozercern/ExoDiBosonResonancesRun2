#!/bin/bash 
#
# Follow instrutions below to setup the Higgs Combine tool
#
# https://twiki.cern.ch/twiki/bin/viewauth/CMS/SWGuideHiggsAnalysisCombinedLimit#SLC6_release
#
# This macro executes the Higgs Combine tool inside a valid working area
#
# The output trees are merged and analyzed by another macro "plotLimit.C" 

eval `scramv1 runtime -sh`

combine -M Asymptotic -d dataCards/CMS_ZZ_1000_EHP_13TeV.txt -m 1000 -n EHP
combine -M Asymptotic -d dataCards/CMS_ZZ_2000_EHP_13TeV.txt -m 2000 -n EHP
combine -M Asymptotic -d dataCards/CMS_ZZ_3000_EHP_13TeV.txt -m 3000 -n EHP
combine -M Asymptotic -d dataCards/CMS_ZZ_4000_EHP_13TeV.txt -m 4000 -n EHP
hadd combineEHP.root higgsCombineEHP.Asymptotic.mH1000.root higgsCombineEHP.Asymptotic.mH2000.root higgsCombineEHP.Asymptotic.mH3000.root higgsCombineEHP.Asymptotic.mH4000.root
 
combine -M Asymptotic -d dataCards/CMS_ZZ_1000_ELP_13TeV.txt -m 1000 -n ELP
combine -M Asymptotic -d dataCards/CMS_ZZ_2000_ELP_13TeV.txt -m 2000 -n ELP
combine -M Asymptotic -d dataCards/CMS_ZZ_3000_ELP_13TeV.txt -m 3000 -n ELP
combine -M Asymptotic -d dataCards/CMS_ZZ_4000_ELP_13TeV.txt -m 4000 -n ELP
hadd combineELP.root higgsCombineELP.Asymptotic.mH1000.root higgsCombineELP.Asymptotic.mH2000.root higgsCombineELP.Asymptotic.mH3000.root higgsCombineELP.Asymptotic.mH4000.root 

combine -M Asymptotic -d dataCards/CMS_ZZ_1000_MHP_13TeV.txt -m 1000 -n MHP
combine -M Asymptotic -d dataCards/CMS_ZZ_2000_MHP_13TeV.txt -m 2000 -n MHP
combine -M Asymptotic -d dataCards/CMS_ZZ_3000_MHP_13TeV.txt -m 3000 -n MHP
combine -M Asymptotic -d dataCards/CMS_ZZ_4000_MHP_13TeV.txt -m 4000 -n MHP
hadd combineMHP.root higgsCombineMHP.Asymptotic.mH1000.root higgsCombineMHP.Asymptotic.mH2000.root higgsCombineMHP.Asymptotic.mH3000.root higgsCombineMHP.Asymptotic.mH4000.root
 
combine -M Asymptotic -d dataCards/CMS_ZZ_1000_MLP_13TeV.txt -m 1000 -n MLP
combine -M Asymptotic -d dataCards/CMS_ZZ_2000_MLP_13TeV.txt -m 2000 -n MLP
combine -M Asymptotic -d dataCards/CMS_ZZ_3000_MLP_13TeV.txt -m 3000 -n MLP
combine -M Asymptotic -d dataCards/CMS_ZZ_4000_MLP_13TeV.txt -m 4000 -n MLP
hadd combineMLP.root higgsCombineMLP.Asymptotic.mH1000.root higgsCombineMLP.Asymptotic.mH2000.root higgsCombineMLP.Asymptotic.mH3000.root higgsCombineMLP.Asymptotic.mH4000.root 

cd dataCards
combineCards.py EHP=CMS_ZZ_1000_EHP_13TeV.txt ELP=CMS_ZZ_1000_ELP_13TeV.txt MHP=CMS_ZZ_1000_MHP_13TeV.txt MLP=CMS_ZZ_1000_MLP_13TeV.txt > CMS_ZZ_1000_13TeV.txt
combineCards.py EHP=CMS_ZZ_2000_EHP_13TeV.txt ELP=CMS_ZZ_2000_ELP_13TeV.txt MHP=CMS_ZZ_2000_MHP_13TeV.txt MLP=CMS_ZZ_2000_MLP_13TeV.txt > CMS_ZZ_2000_13TeV.txt
combineCards.py EHP=CMS_ZZ_3000_EHP_13TeV.txt ELP=CMS_ZZ_3000_ELP_13TeV.txt MHP=CMS_ZZ_3000_MHP_13TeV.txt MLP=CMS_ZZ_3000_MLP_13TeV.txt > CMS_ZZ_3000_13TeV.txt
combineCards.py EHP=CMS_ZZ_4000_EHP_13TeV.txt ELP=CMS_ZZ_4000_ELP_13TeV.txt MHP=CMS_ZZ_4000_MHP_13TeV.txt MLP=CMS_ZZ_4000_MLP_13TeV.txt > CMS_ZZ_4000_13TeV.txt
cd ..

combine -M Asymptotic -d dataCards/CMS_ZZ_1000_13TeV.txt -m 1000 -n ALL
combine -M Asymptotic -d dataCards/CMS_ZZ_2000_13TeV.txt -m 2000 -n ALL
combine -M Asymptotic -d dataCards/CMS_ZZ_3000_13TeV.txt -m 3000 -n ALL
combine -M Asymptotic -d dataCards/CMS_ZZ_4000_13TeV.txt -m 4000 -n ALL
hadd combineALL.root higgsCombineALL.Asymptotic.mH1000.root higgsCombineALL.Asymptotic.mH2000.root higgsCombineALL.Asymptotic.mH3000.root higgsCombineALL.Asymptotic.mH4000.root 


# ROOT6
source /afs/cern.ch/sw/lcg/contrib/gcc/4.8/x86_64-slc6/setup.sh
source /afs/cern.ch/sw/lcg/app/releases/ROOT/6.03.04/x86_64-slc6-gcc48-opt/root/bin/thisroot.sh

root -b -q 'plotLimit.C("EHP")'
root -b -q 'plotLimit.C("ELP")'
root -b -q 'plotLimit.C("MHP")'
root -b -q 'plotLimit.C("MLP")'
root -b -q 'plotLimit.C("ALL")'

mv limitEHP.pdf limitShapeEHP.pdf
mv limitELP.pdf limitShapeELP.pdf
mv limitMLP.pdf limitShapeMLP.pdf
mv limitMHP.pdf limitShapeMHP.pdf
mv limitALL.pdf limitShapeALL.pdf

# remove useless files
rm roostats-*
rm *.root
