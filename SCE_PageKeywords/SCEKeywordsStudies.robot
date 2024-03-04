*** Settings ***
Library  SeleniumLibrary
Library    ../Libraries/Common.py
Library    String
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py
Variables  ../SCE_PageLocators/SCELocatorsUserAccess.py
Variables  ../SCE_PageLocators/SCELocatorsAppFolders.py
Variables  ../SCE_PageLocators/SCE_LocatorsDownloads.py

*** Keywords ***
Create New Study Template
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewStudy}
    Click Element    ${NewStudy}
    @{list} =    Get Name And Desc      template
    ${StudyData} =  Set Variable    ${list}[0]
    Set Suite Variable    ${StudyData}
    Wait Until Element Is Visible    ${StudyNumber}
    Input Text    ${StudyNumber}    ${StudyData}
    Wait Until Element Is Visible    ${StudyName}
    Input Text    ${StudyName}    ${StudyData}
    Wait Until Element Is Visible    ${StudyTitle}
    Input Text    ${StudyTitle}    ${StudyData}
    Wait Until Element Is Visible    ${IsTemplate}
    Click Element    ${IsTemplate}
    Wait Until Element Is Visible    ${StorageButton}
    Click Element    ${StorageButton}
    Wait Until Element Is Visible    ${StudySearch}
    Input Text    ${StudySearch}   Data Server Storage\n
    Sleep    2
    Wait Until Element Is Visible    ${CreateStudy}
    Click Element    ${CreateStudy}
    Sleep    2
    Wait Until Element Is Visible    ${StudyConfirmed}

Create New Study From Template
    Wait Until Element Is Visible    ${SCELogo}
    Click Element    ${SCELogo}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewStudy}
    Click Element    ${NewStudy}
    Wait Until Element Is Visible    ${TemplateButton}
    Click Element    ${TemplateButton}
    Wait Until Element Is Visible    ${StudySearch}
    Input Text    ${StudySearch}    ${StudyData}\n
    Wait Until Element Is Visible    ${StudyNumber}
    Input Text    ${StudyNumber}    ${StudyData}_STUDY
    Wait Until Element Is Visible    ${StudyName}
    Input Text    ${StudyName}    ${StudyData}_STUDY
    Wait Until Element Is Visible    ${StudyTitle}
    Input Text    ${StudyTitle}    ${StudyData}_STUDY
    Wait Until Element Is Visible    ${CreateStudy}
    Click Element    ${CreateStudy}
    Sleep    2
    Wait Until Element Is Visible    ${StudyRequest}

Create New Study
    Wait Until Element Is Visible    ${SCELogo}
    Click Element    ${SCELogo}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewStudy}
    Click Element    ${NewStudy}
    @{list} =    Get Name And Desc      study
    ${StudyData} =  Set Variable    ${list}[0]
    Set Suite Variable    ${StudyData}
    Wait Until Element Is Visible    ${StudyNumber}
    Input Text    ${StudyNumber}    ${StudyData}
    Sleep    2
    Wait Until Element Is Visible    ${StudyName}
    Input Text    ${StudyName}    ${StudyData}
    Wait Until Element Is Visible    ${StudyTitle}
    Input Text    ${StudyTitle}    ${StudyData}
    Wait Until Element Is Visible    ${StorageButton}
    Click Element    ${StorageButton}
    Wait Until Element Is Visible    ${StudySearch}
    Input Text    ${StudySearch}   Data Server Storage\n
    Sleep    2
    Wait Until Element Is Visible    ${CreateStudy}
    Click Element    ${CreateStudy}
    Sleep    2
    Wait Until Element Is Visible    ${StudyConfirmed}
    Sleep    3
    Wait Until Element Is Visible    ${RootFolders}
    Click Element    ${RootFolders}
    Sleep    3

Upload Programs to Study
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\file_copier.rb
    Sleep    10
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas
    Sleep    10
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\pythonSecureExecution.py
    Sleep    10
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\R.r
    Sleep    10
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\raw_dm.sas7bdat
    Sleep    10
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\input.txt
    Sleep    10

Execute Programs
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    5
    Wait Until Element Is Visible    ${FileSearch}
    Input Text    ${FileSearch}    .sas\n
    Sleep    5
    Wait Until Element Is Visible    ${FileThreeBars}
    Click Element    ${FileThreeBars}
    Sleep    5
    Wait Until Element Is Visible    ${ThreeBarsRun}
    Click Element    ${ThreeBarsRun}
    Sleep    30
    Wait Until Element Is Visible    ${ResultsFolder}
    Click Element    ${ResultsFolder}
    Sleep    5
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    5
    Wait Until Element Is Visible    ${FileSearch}
    Input Text    ${FileSearch}    .rb\n
    Sleep    5
    Wait Until Element Is Visible    ${FileThreeBars}
    Click Element    ${FileThreeBars}
    Sleep    5
    Wait Until Element Is Visible    ${ThreeBarsRun}
    Click Element    ${ThreeBarsRun}
    Sleep    30
    Wait Until Element Is Visible    ${ResultsFolder}
    Click Element    ${ResultsFolder}
    Sleep    5
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    5
    Wait Until Element Is Visible    ${FileSearch}
    Input Text    ${FileSearch}    .py\n
    Sleep    5
    Wait Until Element Is Visible    ${FileThreeBars}
    Click Element    ${FileThreeBars}
    Sleep    5
    Wait Until Element Is Visible    ${ThreeBarsRun}
    Click Element    ${ThreeBarsRun}
    Sleep    60
#    Wait Until Element Is Visible    ${ResultsFolder}
#    Click Element    ${ResultsFolder}
#    Sleep    5
#    Wait Until Element Is Visible    ${ProgramsFolder}
#    Click Element    ${ProgramsFolder}
#    Sleep    5
#    Wait Until Element Is Visible    ${FileSearch}
#    Input Text    ${FileSearch}    .r\n
#    Sleep    5
#    Wait Until Element Is Visible    ${SecondThreeBars}
#    Click Element    ${SecondThreeBars}
#    Sleep    5
#    Wait Until Element Is Visible    ${ThreeBarsRun}
#    Click Element    ${ThreeBarsRun}
#    Sleep    30
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    5
    Wait Until Element Is Visible    ${FileSearch}
    Input Text    ${FileSearch}    .sas7bdat\n
    Sleep    5
    Wait Until Element Is Visible    ${SasOutput}
    Wait Until Element Is Visible    ${ResultsFolder}
    Click Element    ${ResultsFolder}
    Sleep    5
    Wait Until Element Is Visible    ${FileSearch}
    Input Text    ${FileSearch}    .txt\n
    Sleep    5
    Wait Until Element Is Visible    ${RubyROutput}
    Wait Until Element Is Visible    ${FileSearch}
    Input Text    ${FileSearch}    python\n
    Sleep    5
    Wait Until Element Is Visible    ${PythonFolder}
    Click Element    ${PythonFolder}
    Sleep    5
    Wait Until Element Is Visible    ${FileSearch}
    Input Text    ${FileSearch}    .txt\n
    Sleep    5
    Wait Until Element Is Visible    ${PythonOutput}
#    Wait Until Element Is Visible    ${ProgramsFolder}
#    Click Element    ${ProgramsFolder}
#    Wait Until Element Is Visible    ${RubyROutput}


#    Wait Until Element Is Visible    ${SasProg}
#    Click Element    ${SasProg}
#    Sleep    5
#    Wait Until Element Is Visible    ${Run}     timeout=30s
#    Click Element    ${Run}
#    Sleep    30
#    Wait Until Element Is Visible    ${ProgramsFolder}
#    Click Element    ${ProgramsFolder}
#    Sleep    5
#    Wait Until Element Is Visible    ${RubyProg}
#    Click Element    ${RubyProg}
#    Sleep    5
#    Wait Until Element Is Visible    ${Run}     timeout=30s
#    Click Element    ${Run}
#    Sleep    30
#    Wait Until Element Is Visible    ${ProgramsFolder}
#    Click Element    ${ProgramsFolder}
#    Sleep    5
#    Wait Until Element Is Visible    ${PythonProg}
#    Click Element    ${PythonProg}
#    Sleep    5
#    Wait Until Element Is Visible    ${Run}     timeout=30s
#    Click Element    ${Run}
#    Sleep    60
#    Wait Until Element Is Visible    ${ProgramsFolder}
#    Click Element    ${ProgramsFolder}
#    Sleep    5
#    Wait Until Element Is Visible    ${RProg}
#    Click Element    ${RProg}
#    Sleep    5
#    Wait Until Element Is Visible    ${Run}
#    Click Element    ${Run}
#    Sleep    30

Upload Files to Study
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\raw_dm.sas7bdat
    Sleep    10
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\ae2.xpt
    Sleep    10

Convert Files to CSV
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${sas7bdat}
    Click Element    ${sas7bdat}
    Sleep    5
    Wait Until Element Is Visible    ${ConvertToCSV}
    Click Element    ${ConvertToCSV}
    Wait Until Element Is Visible    ${PreparingForViewing}
    Wait Until Element Is Not Visible    ${PreparingForViewing}     timeout=30
    Sleep    5
    Wait Until Element Is Visible    ${StudyIDColumn}
    Wait Until Element Is Visible    ${RowCheckSas}
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${xpt}
    Click Element    ${xpt}
    Sleep    5
    Wait Until Element Is Visible    ${ConvertCSVInline}
    Click Element    ${ConvertCSVInline}
    Wait Until Element Is Visible    ${PreparingForViewing}
    Wait Until Element Is Not Visible    ${PreparingForViewing}     timeout=30
    Sleep    5
    Wait Until Element Is Visible    ${StudyIDColumn}
    Wait Until Element Is Visible    ${RowCheckXpt}


Upload Programs to Study for Dependency Check
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas
    Sleep    10
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog_nocomments.sas
    Sleep    10
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\raw_dm.sas7bdat
    Sleep    10
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\input.txt
    Sleep    10

Download Folder and Check
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    3
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    3
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas
    Sleep    15
    Wait Until Element Is Visible    ${DownloadInStudy}
    Click Element    ${DownloadInStudy}
    Sleep    3
    ${modLoadingDownload}=    Replace String  ${LoadingDownload}  xyz  ${StudyData}
    Wait Until Element Is Visible    ${modLoadingDownload}
    Sleep    30
    Reload Page
    Sleep    3
    ${modReadyToDownload}=    Replace String  ${ReadyToDownload}  xyz  ${StudyData}
    Wait Until Element Is Visible    ${modReadyToDownload}
    ${file_name}=       Get Text    ${FirstFileName}
    Wait Until Element Is Visible    ${FirstDownloadButton}
    Click Element    ${FirstDownloadButton}
    Sleep    10
    ${file_path}=    Set Variable    C:\\Users\\siddh\\Downloads\\${file_name}
    Run Keyword If   ${{os.path.exists($file_path)}} is False    Fail        File does not exist

Upload and Unzip
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    3
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    3
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\TestData.zip
    Sleep    15
    Wait Until Element Is Visible    ${ThirdThreeBars}
    Click Element    ${ThirdThreeBars}
    Sleep    3
    Wait Until Element Is Visible    ${ThreeBarsUnzip}
    Click Element    ${ThreeBarsUnzip}
    Sleep    3
    Wait Until Element Is Visible    ${UnzipInitiatedPrompt}        timeout=30
    Wait Until Element Is Not Visible    ${UnzipInitiatedPrompt}        timeout=30
    Wait Until Element Is Visible    ${UnzipFinishedPrompt}     timeout=30
    Wait Until Element Is Not Visible    ${UnzipFinishedPrompt}     timeout=30
    Wait Until Element Is Visible    ${SasProg}     timeout=30
    Wait Until Element Is Visible    ${RubyProg}        timeout=30

Copy File From Programs to Data
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    3
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    3
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas
    Sleep    15
    Wait Until Element Is Visible    ${SelectFirstFile}
    Click Element    ${SelectFirstFile}
    Sleep    3
    Wait Until Element Is Visible    ${AddToClipboardButton}
    Click Element    ${AddToClipboardButton}
    Sleep    3
    Wait Until Element Is Visible    ${AddedToClipboardPrompt}      timeout=30
    Wait Until Element Is Not Visible    ${AddedToClipboardPrompt}      timeout=30
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    3
    Wait Until Element Is Visible    ${Clipboard}
    Click Element    ${Clipboard}
    Sleep    3
    Wait Until Element Is Visible    ${SelectAllClipboard}
    Click Element    ${SelectAllClipboard}
    Sleep    3
    Wait Until Element Is Visible    ${PasteHere}
    Click Element    ${PasteHere}
    Sleep    5
    Wait Until Element Is Visible    ${Clipboard}
    Click Element    ${Clipboard}
    Sleep    10
    Wait Until Element Is Visible    ${SasProg}

Move File From Programs to Results
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    3
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    3
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas
    Sleep    15
    Wait Until Element Is Visible    ${SelectFirstFile}
    Click Element    ${SelectFirstFile}
    Sleep    3
    Wait Until Element Is Visible    ${AddToClipboardButton}
    Click Element    ${AddToClipboardButton}
    Sleep    3
    Wait Until Element Is Visible    ${AddedToClipboardPrompt}      timeout=30
    Wait Until Element Is Not Visible    ${AddedToClipboardPrompt}      timeout=30
    Wait Until Element Is Visible    ${ResultsFolder}
    Click Element    ${ResultsFolder}
    Sleep    3
    Wait Until Element Is Visible    ${Clipboard}
    Click Element    ${Clipboard}
    Sleep    3
    Wait Until Element Is Visible    ${SelectAllClipboard}
    Click Element    ${SelectAllClipboard}
    Sleep    3
    Wait Until Element Is Visible    ${MoveHere}
    Click Element    ${MoveHere}
    Sleep    3
    Handle Alert
    Sleep    10
    Wait Until Element Is Visible    ${SasProg}
    Sleep    3
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    3
    Element Should Not Be Visible    ${SasProg}

Upload Single File to Study
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    3
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas
    Sleep    15

Upload and Run a Single Program
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\file_copier.rb
    Sleep    10
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\input.txt
    Sleep    10
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FileThreeBars}
    Click Element    ${FileThreeBars}
    Sleep    5
    Wait Until Element Is Visible    ${ThreeBarsRun}
    Click Element    ${ThreeBarsRun}
    Sleep    30
    Wait Until Element Is Visible    ${ResultsFolder}
    Click Element    ${ResultsFolder}
    Sleep    2
    Wait Until Element Is Visible    ${RubyROutput}     timeout=30

Upload and Create Special Character Files
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\input.txt
    Sleep    10
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\Test~ @ # $ % ^ + = { } [ ] ; ,.txt
    Sleep    10
    Wait Until Element Is Visible    ${SpecialCharFileVerify}     timeout=30
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Sleep    2
    Wait Until Element Is Visible    ${CreateNewFile}
    Click Element    ${CreateNewFile}
    Sleep    3
    Wait Until Element Is Visible    ${SaveFileButton}
    Click Element    ${SaveFileButton}
    Sleep    3
    Wait Until Element Is Visible    ${InputFileName}
    Click Element    ${InputFileName}
    Sleep    1
    Input Text    ${InputFileName}      test2Test~ @ # $ % ^ + = { } [ ] ; ,.txt
    Sleep    2
    Wait Until Element Is Visible    ${CreateFileButton}
    Click Element    ${CreateFileButton}
    Sleep    3
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${NewSpecialCharFileVerify}     timeout=30
    Wait Until Element Is Visible    ${FileThreeBars}
    Click Element    ${FileThreeBars}
    Sleep    3
    Wait Until Element Is Visible    ${ThreeBarsRename}
    Click Element    ${ThreeBarsRename}
    Sleep    3
    Wait Until Element Is Visible    ${RenameInput}
    Input Text    ${RenameInput}    Test {Space ~ @ # $ % ^ + = { } [ ] ; ,.txt\n
    Sleep    2
    Wait Until Element Is Visible    ${RenamedSpecialCharFileVerify}     timeout=30

Upload and Run Special Character Program
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\input!@#().txt
    Sleep    10
    Wait Until Element Is Visible    ${SpecialCharProgInputVerify}     timeout=30
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\rubyprogram!@#().rb
    Sleep    10
    Wait Until Element Is Visible    ${SpecialCharProgVerify}     timeout=30
    Wait Until Element Is Visible    ${FileThreeBars}
    Click Element    ${FileThreeBars}
    Sleep    3
    Wait Until Element Is Visible    ${ThreeBarsRun}
    Click Element    ${ThreeBarsRun}
    Sleep    30
    Wait Until Element Is Visible    ${SpecialCharProgOutputVerify}     timeout=30
    Wait Until Element Is Visible    ${SecondThreeBars}
    Click Element    ${SecondThreeBars}
    Sleep    3
    Wait Until Element Is Visible    ${ThreeBarsHistory}
    Click Element    ${ThreeBarsHistory}
    Sleep    5
    Wait Until Element Is Visible    ${SpecialCharProgVerify}
    Click Element    ${SpecialCharProgVerify}
    Wait Until Element Is Visible    ${OutputFileInReportVerify}        timeout=30
    Sleep    2
    Wait Until Element Is Visible    ${TraceabilityReportButton}
    Click Element    ${TraceabilityReportButton}
    Wait Until Element Is Visible    ${OutputFileInReportVerify}        timeout=30
    Sleep    2

Upload and Copy and Move Special Character File
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\Test~ @ # $ % ^ + = { } [ ] ; ,.txt
    Sleep    10
    Wait Until Element Is Visible    ${SpecialCharFileVerify}     timeout=30
    Wait Until Element Is Visible    ${SelectFirstFile}
    Click Element    ${SelectFirstFile}
    Sleep    3
    Wait Until Element Is Visible    ${AddToClipboardButton}
    Click Element    ${AddToClipboardButton}
    Sleep    3
    Wait Until Element Is Visible    ${AddedToClipboardPrompt}      timeout=30
    Wait Until Element Is Not Visible    ${AddedToClipboardPrompt}      timeout=30
    Wait Until Element Is Visible    ${ResultsFolder}
    Click Element    ${ResultsFolder}
    Sleep    3
    Wait Until Element Is Visible    ${Clipboard}
    Click Element    ${Clipboard}
    Sleep    3
    Wait Until Element Is Visible    ${SelectAllClipboard}
    Click Element    ${SelectAllClipboard}
    Sleep    3
    Wait Until Element Is Visible    ${PasteHere}
    Click Element    ${PasteHere}
    Sleep    5
    Wait Until Element Is Visible    ${Clipboard}
    Click Element    ${Clipboard}
    Sleep    10
    Wait Until Element Is Visible    ${SpecialCharFileVerify}     timeout=30
    Wait Until Element Is Visible    ${DocumentsFolder}
    Click Element    ${DocumentsFolder}
    Sleep    3
    Wait Until Element Is Visible    ${Clipboard}
    Click Element    ${Clipboard}
    Sleep    3
    Wait Until Element Is Visible    ${SelectAllClipboard}
    Click Element    ${SelectAllClipboard}
    Sleep    3
    Wait Until Element Is Visible    ${MoveHere}
    Click Element    ${MoveHere}
    Sleep    3
    Handle Alert
    Sleep    10
    Wait Until Element Is Visible    ${SpecialCharFileVerify}     timeout=30
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Element Should Not Be Visible    ${SpecialCharFileVerify}

Upload all Special Char Files
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\Test~ @ # $ % ^ + = { } [ ] ; ,.txt
    Sleep    10
    Wait Until Element Is Visible    ${SpecialCharFileVerify}     timeout=30
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Sleep    2
    Wait Until Element Is Visible    ${CreateNewFile}
    Click Element    ${CreateNewFile}
    Sleep    3
    Wait Until Element Is Visible    ${SaveFileButton}
    Click Element    ${SaveFileButton}
    Sleep    3
    Wait Until Element Is Visible    ${InputFileName}
    Click Element    ${InputFileName}
    Sleep    1
    Input Text    ${InputFileName}      test2Test~ @ # $ % ^ + = { } [ ] ; ,.txt
    Sleep    2
    Wait Until Element Is Visible    ${CreateFileButton}
    Click Element    ${CreateFileButton}
    Sleep    3
    Wait Until Element Is Visible    ${DataFolder}
    Click Element    ${DataFolder}
    Sleep    2
    Wait Until Element Is Visible    ${NewSpecialCharFileVerify}     timeout=30

Create Batch and Add Programs
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    3
    Wait Until Element Is Visible    ${ManageButton}
    Click Element    ${ManageButton}
    Sleep    3
    Wait Until Element Is Visible    ${BatchesButton}
    Click Element    ${BatchesButton}
    Sleep    3
    Wait Until Element Is Visible    ${CreateBatchButton}
    Click Element    ${CreateBatchButton}
    Sleep    3
    Wait Until Element Is Visible    ${InputBatchName}
    Click Element    ${InputBatchName}
    Sleep    1
    Input Text    ${InputBatchName}    batch1
    Sleep    2
    ${PythonProgInList}=    Replace String  ${ProgInList}  xyz  pythonSecureExecution.py
    ${RubyProgInList}=    Replace String  ${ProgInList}  xyz  file_copier.rb
    ${RProgInList}=    Replace String  ${ProgInList}  xyz  R.r
    ${SasProgInList}=    Replace String  ${ProgInList}  xyz  dm_sas7bdat_prog.sas
#    Wait Until Element Is Visible    ${BatchProgramSelect}
#    Click Element    ${BatchProgramSelect}
#    Sleep    2
#    Wait Until Element Is Visible    ${PythonProgInList}
#    Click Element    ${PythonProgInList}
#    Sleep    2
    Wait Until Element Is Visible    ${BatchProgramSelect}
    Click Element    ${BatchProgramSelect}
    Sleep    2
    Wait Until Element Is Visible    ${RubyProgInList}
    Click Element    ${RubyProgInList}
    Sleep    2
    Wait Until Element Is Visible    ${BatchProgramSelect}
    Click Element    ${BatchProgramSelect}
    Sleep    2
    Wait Until Element Is Visible    ${RProgInList}
    Click Element    ${RProgInList}
    Sleep    2
#    Wait Until Element Is Visible    ${BatchProgramSelect}
#    Click Element    ${BatchProgramSelect}
#    Sleep    2
#    Wait Until Element Is Visible    ${SasProgInList}
#    Click Element    ${SasProgInList}
#    Sleep    2

    Wait Until Element Is Visible    ${ConfirmCreateBatch}
    Click Element    ${ConfirmCreateBatch}
    Wait Until Element Is Visible    ${BatchConfirmationPrompt}     timeout=30
    Sleep    3

#    ${PythonProgInBatch}=    Replace String  ${ProgInBatch}  xyz  pythonSecureExecution.py
    ${RubyProgInBatch}=    Replace String  ${ProgInBatch}  xyz  file_copier.rb
    ${RProgInBatch}=    Replace String  ${ProgInBatch}  xyz  R.r
#    ${SasProgInBatch}=    Replace String  ${ProgInBatch}  xyz  dm_sas7bdat_prog.sas
#    Element Should Be Visible    ${PythonProgInBatch}
    Element Should Be Visible    ${RubyProgInBatch}
    Element Should Be Visible    ${RProgInBatch}
#    Element Should Be Visible    ${SasProgInBatch}
    Sleep    3

#    Wait Until Element Is Visible    ${BatchProgramSelect}
#    Click Element    ${BatchProgramSelect}
#    Sleep    2
#    Press Keys    None    ENTER
#    Sleep    2
#    Wait Until Element Is Visible    ${BatchProgramSelect}
#    Click Element    ${BatchProgramSelect}
#    Sleep    2
#    Press Keys    None    ARROW_DOWN
#    Sleep    2
#    Press Keys    None    ENTER
#    Sleep    2
#    Wait Until Element Is Visible    ${BatchProgramSelect}
#    Click Element    ${BatchProgramSelect}
#    Sleep    2
#    Press Keys    None    ARROW_DOWN
#    Sleep    2
#    Press Keys    None    ARROW_DOWN
#    Sleep    2
#    Press Keys    None    ENTER
#    Sleep    2
#    Wait Until Element Is Visible    ${BatchProgramSelect}
#    Click Element    ${BatchProgramSelect}
#    Sleep    2
#    Press Keys    None    ARROW_DOWN
#    Sleep    2
#    Press Keys    None    ARROW_DOWN
#    Sleep    2
#    Press Keys    None    ARROW_DOWN
#    Sleep    2
#    Press Keys    None    ENTER
#    Sleep    2

Run Batch
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    3
    Wait Until Element Is Visible    ${LastThreeBars}
    Click Element    ${LastThreeBars}
    Sleep    3
    Wait Until Element Is Visible    ${ThreeBarsRun}
    Click Element    ${ThreeBarsRun}
    Sleep    3
    Wait Until Element Is Visible    ${LastThreeBars}
    Click Element    ${LastThreeBars}
    Sleep    3
    Sleep    10
    Wait Until Element Is Visible    ${LastThreeBars}
    Click Element    ${LastThreeBars}
    Sleep    3
    Wait Until Element Is Visible    ${ThreeBarsRun}
    Click Element    ${ThreeBarsRun}
    Wait Until Element Is Visible    ${BatchRunConfirmPrompt}        timeout=30
    ${RGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  R.r
    ${RubyGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  file_copier.rb
    Element Should Be Visible    ${RGreenTick}
    Element Should Be Visible    ${RubyGreenTick}
    Wait Until Element Is Visible    ${LastThreeBars}
    Click Element    ${LastThreeBars}
    Sleep    3
    Wait Until Element Is Visible    ${LastThreeBars}
    Click Element    ${LastThreeBars}
    Sleep    3
    Wait Until Element Is Visible    ${ThreeBarsHistory}
    Click Element    ${ThreeBarsHistory}
    Wait Until Element Is Visible    ${OkPromptInHistory}        timeout=30
    Sleep    3

Run Data Migration
    Wait Until Element Is Visible    ${SCELogo}
    Click Element    ${SCELogo}
    Sleep    3
    Wait Until Element Is Visible    ${MainSearchBar}
    Click Element    ${MainSearchBar}
    Sleep    1
    Input Text    ${MainSearchBar}    migrate
    Sleep    5
    Wait Until Element Is Visible    ${FirstSearchResult}
    Click Element    ${FirstSearchResult}
    Sleep    3
    ${foldername}=    Replace String  ${EnterFolderName}  xyz  trash
    Wait Until Element Is Visible    ${foldername}
    Click Element    ${foldername}
    Sleep    3
    Wait Until Element Is Visible    ${JsonFileInStudy}
    Click Element    ${JsonFileInStudy}
    Sleep    3

    # make edits or upload updated json file

    Wait Until Element Is Visible    ${foldername}
    Click Element    ${foldername}
    Sleep    3
    Wait Until Element Is Visible    ${RubyFileInStudy}
    Click Element    ${RubyFileInStudy}
    Sleep    3

    # make edits or upload updated ruby file

    Wait Until Element Is Visible    ${Run}
    Click Element    ${Run}
    Sleep    5
    ${RubyGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  wrapper.rb
    Wait Until Element Is Visible    ${foldername}
    Click Element    ${foldername}
    Sleep    3
    Wait Until Element Is Visible    ${RubyGreenTick}       timeout=30
    Sleep    3
    Wait Until Element Is Visible    ${SCELogo}
    Click Element    ${SCELogo}
    Sleep    3
    Wait Until Element Is Visible    ${MainSearchBar}
    Click Element    ${MainSearchBar}
    Sleep    1
    Input Text    ${MainSearchBar}    study_name
    Sleep    5
    Wait Until Element Is Visible    ${FirstSearchResult}
    Click Element    ${FirstSearchResult}
    Sleep    3
    Wait Until Element Is Visible    ${foldername}
    Click Element    ${foldername}
    Sleep    3

    # check if the files are there
