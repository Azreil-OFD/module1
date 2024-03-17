$FileUri = "https://www.python.org/ftp/python/3.10.4/python-3.10.4-amd64.exe"
$Destination = "python.exe"

$bitsJobObj = Start-BitsTransfer $FileUri -Destination $Destination

switch ($bitsJobObj.JobState) {

    'Transferred' {
        Complete-BitsTransfer -BitsJob $bitsJobObj
        break
    }

    'Error' {
        throw 'Error downloading'
    }
}

$exeArgs = '/quiet InstallAllUsers=1 PrependPath=1 Include_test=0'

Start-Process -Wait $Destination -ArgumentList $exeArgs