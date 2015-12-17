# a .zsh file should be discovered for this to work, that defines:
#export CERNUSER=''
#export DIRACUSER=''
#export DIRACPWD=''
#export DIRACODE='///'

#lxplus, aiadm
alias lxplus='ssh $CERNUSER@lxplus.cern.ch'
alias aiadm='ssh $CERNUSER@aiadm.cern.ch'

#DIRAC production voboxes
alias volhcb02='ssh $CERNUSER@aiadm -t ssh volhcb02'
alias volhcb03='ssh $CERNUSER@aiadm -t ssh volhcb03'
alias volhcb04='ssh $CERNUSER@aiadm -t ssh volhcb04'
alias volhcb17='ssh $CERNUSER@aiadm -t ssh volhcb17'
alias volhcb18='ssh $CERNUSER@aiadm -t ssh volhcb18'
alias volhcb19='ssh $CERNUSER@aiadm -t ssh volhcb19'
alias volhcb20='ssh $CERNUSER@aiadm -t ssh volhcb20'
alias volhcb22='ssh $CERNUSER@aiadm -t ssh volhcb22'
alias volhcb21='ssh $CERNUSER@aiadm -t ssh volhcb21'
alias volhcb29='ssh $CERNUSER@aiadm -t ssh volhcb29'
alias volhcb24='ssh $CERNUSER@aiadm -t ssh volhcb24'
alias volhcb30='ssh $CERNUSER@aiadm -t ssh volhcb30'
alias lbvobox01='ssh $CERNUSER@aiadm -t ssh lbvobox01'
alias lbvobox02='ssh $CERNUSER@aiadm -t ssh lbvobox02'
alias lbvobox01='ssh $CERNUSER@aiadm -t ssh lbvobox01'
alias lbvobox07='ssh $CERNUSER@aiadm -t ssh lbvobox07'
alias lbvobox09='ssh $CERNUSER@aiadm -t ssh lbvobox09'
alias lbvobox10='ssh $CERNUSER@aiadm -t ssh lbvobox10'
alias lbvobox11='ssh $CERNUSER@aiadm -t ssh lbvobox11'
alias lbvobox12='ssh $CERNUSER@aiadm -t ssh lbvobox12'
alias lbvobox13='ssh $CERNUSER@aiadm -t ssh lbvobox13'
alias lbvobox14='ssh $CERNUSER@aiadm -t ssh lbvobox14'
alias lbvobox15='ssh $CERNUSER@aiadm -t ssh lbvobox15'
alias lbvobox16='ssh $CERNUSER@aiadm -t ssh lbvobox16'
alias lbvobox17='ssh $CERNUSER@aiadm -t ssh lbvobox17'
alias lbvobox18='ssh $CERNUSER@aiadm -t ssh lbvobox18'
alias lbvobox19='ssh $CERNUSER@aiadm -t ssh lbvobox19'
alias lbvobox20='ssh $CERNUSER@aiadm -t ssh lbvobox20'
alias lbvobox21='ssh $CERNUSER@aiadm -t ssh lbvobox21'
alias lbvobox22='ssh $CERNUSER@aiadm -t ssh lbvobox22'
alias lbvobox23='ssh $CERNUSER@aiadm -t ssh lbvobox23'
alias lbvobox24='ssh $CERNUSER@aiadm -t ssh lbvobox24'
alias lbvobox25='ssh $CERNUSER@aiadm -t ssh lbvobox25'
alias lbvobox26='ssh $CERNUSER@aiadm -t ssh lbvobox26'
alias lbvobox27='ssh $CERNUSER@aiadm -t ssh lbvobox27'
alias lbvobox28='ssh $CERNUSER@aiadm -t ssh lbvobox28'
alias lbvobox29='ssh $CERNUSER@aiadm -t ssh lbvobox29'
alias lbvobox30='ssh $CERNUSER@aiadm -t ssh lbvobox30'
alias lbvobox31='ssh $CERNUSER@aiadm -t ssh lbvobox31'
alias lbvobox32='ssh $CERNUSER@aiadm -t ssh lbvobox32'
alias lbvobox40='ssh $CERNUSER@aiadm -t ssh lbvobox40'
alias lbvobox41='ssh $CERNUSER@aiadm -t ssh lbvobox41'
alias lbvobox42='ssh $CERNUSER@aiadm -t ssh lbvobox42'
alias lbvobox43='ssh $CERNUSER@aiadm -t ssh lbvobox43'
alias lbvobox80='ssh $CERNUSER@aiadm -t ssh lbvobox80'
alias lbvobox81='ssh $CERNUSER@aiadm -t ssh lbvobox81'
#DIRAC certification voboxes
alias certMachine='ssh $CERNUSER@aiadm -t ssh lbtestvobox'
alias certMachine2='ssh $CERNUSER@aiadm -t ssh lbtestvobox2'

#DIRAC build machines
alias lhcbci99='ssh $CERNUSER@aiadm -t ssh lhcbci99'
alias lhcbci12='ssh $CERNUSER@aiadm -t ssh lhcbci12'
alias lhcbci11='ssh $CERNUSER@aiadm -t ssh lhcbci11'
alias cernvmci='ssh dirac@lhcbci-cernvm02'
alias cernvmci-mp='ssh dirac@lhcbci-cernvm-mp-01'

#DBs
alias dbodProd='mysql -u$DIRACUSER -pPWD$DIRACPWD -hdbod-lbprod.cern.ch -P5501'
alias dbodWMS='mysql -u$DIRACUSER -p$DIRACPWD -hdbod-lbwms.cern.ch -P5506'
alias dbodDFC='mysql -u$DIRACUSER -p$DIRACPWD -hdbod-dfc.cern.ch -P5502'
alias dbodWMSAcc='mysql -u$DIRACUSER -p$DIRACPWD -hdbod-lbwmsacc.cern.ch -P5516'
alias dbodAcc='mysql -u$DIRACUSER -p$DIRACPWD -hdbod-lbacc.cern.ch -P5505'
alias dbodCert='mysql -u$DIRACUSER -p$DIRACPWD -hdbod-lbcertif.cern.ch -P5506'
alias dbodDev='mysql -u$DIRACUSER -p$DIRACPWD -hdbod-lbdev.cern.ch -P5502'
alias dbodCI='mysql -u$DIRACUSER -p -hdbod-dirac-ci.cern.ch -P5501'

#DIRAC paths
#export PYTHONPATH=$PYTHONPATH:$DIRACCODE
#export PATH=$PATH:$DIRACCODE/scripts/

#not working yet
function lbvoboxexec {
  ssh $CERNUSER@aiadm.cern.ch -t 'ssh lbvobox\"$1\" "grep EXCEPT /opt/dirac/runit/*/*/log/current"'
}

function lbvobxconnect {
  ssh $CERNUSER@aiadm.cern.ch -t 'ssh lbvobox\"$1\"'
}

