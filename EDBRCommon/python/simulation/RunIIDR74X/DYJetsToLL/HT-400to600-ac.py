import FWCore.ParameterSet.Config as cms

maxEvents = cms.untracked.PSet( input = cms.untracked.int32(-1) )
readFiles = cms.untracked.vstring()
secFiles = cms.untracked.vstring()
source = cms.Source ("PoolSource",fileNames = readFiles, secondaryFileNames = secFiles)
readFiles.extend( [
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/50000/C86646B0-7528-E511-A67F-0025905A6136.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/50000/CC6555F0-F929-E511-A094-0002C90C4FC6.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/50000/D61F5625-142A-E511-BBAE-003048FFD728.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/50000/DE333E6C-D829-E511-A126-0025904CF764.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/50000/EE768227-172A-E511-B73F-002618B27F8A.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/50000/F2B60328-4D2E-E511-83FE-0025B3E00C96.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/50000/F610B13E-F829-E511-9458-F45214C748D2.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/50000/FC951701-2229-E511-8D63-0002C94D5752.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/50000/FCF32127-0634-E511-9727-003048F5B2A8.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/80000/5EBD97DD-252B-E511-BBDC-0025905A48EC.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/80000/72AD4589-272B-E511-BAD8-003048FFCB74.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/80000/A070F099-542E-E511-A1DC-001F29072C1E.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/80000/AC8543CE-372A-E511-A232-02163E00E833.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/80000/D2F9B5A9-8030-E511-90FB-002481E94C56.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/80000/D82C9AEB-5529-E511-A851-02163E011827.root',
       '/store/mc/RunIISpring15DR74/DYJetsToLL_M-50_HT-400to600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/MINIAODSIM/Asympt25ns_MCRUN2_74_V9-v2/80000/DE1CD6AC-6F30-E511-949D-003048F02CBA.root' ] ); 
