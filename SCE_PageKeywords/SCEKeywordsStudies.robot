*** Settings ***
Library  SeleniumLibrary
Library    ../Libraries/Common.py
Library    String
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py
Variables  ../SCE_PageLocators/SCELocatorsUserAccess.py
Variables  ../SCE_PageLocators/SCE_LocatorsDownloads.py
Variables  ../TestData/InputData.yaml
Resource    ../Libraries/UILib.robot

*** Keywords ***
Create New Study Template
    Wait Until Web Element Is Visible   Home    New    ${New}
    Click Web Element    Home    New    ${New}
    Wait Until Web Element Is Visible   Home    New Study    ${NewStudy}
    Click Web Element    Home    New Study    ${NewStudy}
    @{list} =    Get Name And Desc      template
    ${StudyData} =  Set Variable    ${list}[0]
    Set Suite Variable    ${StudyData}
    Wait Until Web Element Is Visible   Create Study    Study Number    ${StudyNumber}
    Fill Text    Create Study    Study Number    ${StudyNumber}    ${StudyData}
    Wait Until Web Element Is Visible   Create Study    Study Name    ${StudyName}
    Fill Text    Create Study    Study Name    ${StudyName}    ${StudyData}
    Wait Until Web Element Is Visible   Create Study    Study Title    ${StudyTitle}
    Fill Text    Create Study    Study Title    ${StudyTitle}    ${StudyData}
    Wait Until Web Element Is Visible   Create Study    Template Checkbox    ${IsTemplate}
    Click Web Element    Create Study    Template Checkbox    ${IsTemplate}
    Wait Until Web Element Is Visible   Create Study    Storage Button    ${StorageButton}
    Click Web Element    Create Study    Storage Button    ${StorageButton}
    Wait Until Web Element Is Visible   Create Study    Storage Search    ${StudySearch}
    Fill Text    Create Study    Storage Search    ${StudySearch}    ${StorageNameArg}\n
    Wait Until Web Element Is Visible   Create Study    CreateStudy    ${CreateStudy}
    Click Web Element    Create Study    CreateStudy    ${CreateStudy}
    Wait Until Web Element Is Visible   Study    StudyConfirmed    ${StudyConfirmed}

Create New Folder
    Wait Until Web Element Is Visible   Study    Folders View    ${RootFolders}
    Click Web Element    Study    Folders View    ${RootFolders}
    Wait Until Web Element Is Visible   Study    New    ${New}
    Click Web Element   Study    New    ${New}
    Wait Until Web Element Is Visible   Study    New Folder    ${NewFolder}
    Click Web Element   Study    New Folder    ${NewFolder}
    Wait Until Web Element Is Visible   Create Folder    Folder Name Input    ${FolderNameInput}
    Fill Text    Create Folder    Folder Name Input     ${FolderNameInput}    ${StudyData}_FOLDER
    Wait Until Web Element Is Visible   Create Folder    FolderTypeButton    ${FolderTypeButton}
    Click Web Element   Create Folder    FolderTypeButton    ${FolderTypeButton}
    Wait Until Web Element Is Visible   Create Folder    Folder Type Search    ${SelectSearch}
    Fill Text    Create Folder    Folder Type Search    ${SelectSearch}   ${FolderTypeArg}\n
    Wait Until Web Element Is Visible   Create Folder    PermissionTypeButton    ${PermissionTypeButton}
    Click Web Element   Create Folder    PermissionTypeButton    ${PermissionTypeButton}
    Wait Until Web Element Is Visible   Create Folder    Permission Type Search    ${SelectSearch}
    Fill Text    Create Folder    Permission Type Search    ${SelectSearch}   ${PermissionTypeArg}\n
    Wait Until Web Element Is Visible   Create Folder    Create Folder Button    ${CreateFolder}
    Click Web Element   Create Folder    Create Folder Button    ${CreateFolder}
    Wait Until Web Element Is Visible   Create Folder    FolderConfirmed    ${FolderConfirmed}

Create Base Folders in Study
    Wait Until Web Element Is Visible    Study    RootFolders    ${RootFolders}
    Click Web Element    Study    RootFolders    ${RootFolders}
    Wait Until Web Element Is Visible    Study    New    ${New}
    Click Web Element    Study    New    ${New}
    Wait Until Web Element Is Visible    Study    NewFolder    ${NewFolder}
    Click Web Element    Study    NewFolder    ${NewFolder}
    Wait Until Web Element Is Visible    CreateFolder    FolderNameInput    ${FolderNameInput}
    Fill Text    CreateFolder    FolderNameInput    ${FolderNameInput}    documents
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   documents\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    data
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   data\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    programs
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   programs\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    results
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   results\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}
    Sleep    2
    Wait Until Element Is Visible    ${ResultsFolder}
    Click Element    ${ResultsFolder}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    python
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   results\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}
    Sleep    5

Create New Study From Template
    Wait Until Web Element Is Visible    Study    SCELogo    ${SCELogo}
    Click Web Element    Study    SCELogo    ${SCELogo}
    Wait Until Web Element Is Visible    Home    New    ${New}
    Click Web Element    Home    New    ${New}
    Wait Until Web Element Is Visible    Home    NewStudy    ${NewStudy}
    Click Web Element    Home    NewStudy    ${NewStudy}
    Wait Until Web Element Is Visible    CreateStudy    TemplateButton    ${TemplateButton}
    Click Web Element    CreateStudy    TemplateButton    ${TemplateButton}
    Wait Until Web Element Is Visible    CreateStudy    StudySearch    ${StudySearch}
    Fill Text    CreateStudy    StudySearch    ${StudySearch}    ${StudyData}\n
    Wait Until Web Element Is Visible    CreateStudy    StudyNumber    ${StudyNumber}
    Fill Text    CreateStudy    StudyNumber    ${StudyNumber}    ${StudyData}_STUDY
    Wait Until Web Element Is Visible    CreateStudy    StudyName    ${StudyName}
    Fill Text    CreateStudy    StudyName    ${StudyName}    ${StudyData}_STUDY
    Wait Until Web Element Is Visible    CreateStudy    StudyTitle    ${StudyTitle}
    Fill Text    CreateStudy    StudyTitle    ${StudyTitle}    ${StudyData}_STUDY
    Wait Until Web Element Is Visible    CreateStudy    CreateStudyButton    ${CreateStudy}
    Click Web Element    CreateStudy    CreateStudyButton    ${CreateStudy}
    Wait Until Web Element Is Visible    CreateStudy    StudyRequest    ${StudyRequest}

Create New Study
    Wait Until Web Element Is Visible    Default    SCELogo    ${SCELogo}
    Click Web Element    Default    SCELogo    ${SCELogo}
    Wait Until Web Element Is Visible    Home    New    ${New}
    Click Web Element    Home    New    ${New}
    Wait Until Web Element Is Visible    Home    NewStudy    ${NewStudy}
    Click Web Element    Home    NewStudy    ${NewStudy}
    @{list} =    Get Name And Desc      study
    ${StudyData} =  Set Variable    ${list}[0]
    Set Suite Variable    ${StudyData}
    Wait Until Web Element Is Visible    CreateStudy    StudyNumber    ${StudyNumber}
    Fill Text    CreateStudy    StudyNumber    ${StudyNumber}    ${StudyData}
    Wait Until Web Element Is Visible    CreateStudy    StudyName    ${StudyName}
    Fill Text    CreateStudy    StudyName    ${StudyName}    ${StudyData}
    Wait Until Web Element Is Visible    CreateStudy    StudyTitle    ${StudyTitle}
    Fill Text    CreateStudy    StudyTitle    ${StudyTitle}    ${StudyData}
#    Wait Until Web Element Is Visible    CreateStudy    StorageButton    ${StorageButton}
#    Click Web Element    CreateStudy    StorageButton    ${StorageButton}
#    Wait Until Web Element Is Visible    CreateStudy    StudySearch    ${StudySearch}
#    Fill Text    CreateStudy    StudySearch    ${StudySearch}   ${StorageNameArg}\n
    Wait Until Web Element Is Visible    CreateStudy    CreateStudyButton    ${CreateStudy}
    Click Web Element    CreateStudy    CreateStudyButton    ${CreateStudy}
    Wait Until Web Element Is Visible    Study    StudyConfirmed    ${StudyConfirmed}
    Wait Until Web Element Is Visible    Study    RootFolders    ${RootFolders}
    Click Web Element    Study    RootFolders    ${RootFolders}

Upload Programs to Study
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Upload    UploadFile    ${UploadFile}
    Fill Text    Upload    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\file_copier.rb      10
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Upload    UploadFile    ${UploadFile}
    Fill Text    Upload    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas      10
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Upload    UploadFile    ${UploadFile}
    Fill Text    Upload    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\pythonSecureExecution.py      10
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Upload    UploadFile    ${UploadFile}
    Fill Text    Upload    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\R.r     10
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Upload    UploadFile    ${UploadFile}
    Fill Text    Upload    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\raw_dm.sas7bdat     10
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Upload    UploadFile    ${UploadFile}
    Fill Text    Upload    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\input.txt       10

Execute Programs
    ${SasThreeBars}=    Replace String  ${NamedFileThreeBars}  xyz  dm_sas7bdat_prog.sas
    ${RubyThreeBars}=    Replace String  ${NamedFileThreeBars}  xyz  file_copier.rb
    ${PythonThreeBars}=    Replace String  ${NamedFileThreeBars}  xyz  pythonSecureExecution.py
    ${RThreeBars}=    Replace String  ${NamedFileThreeBars}  xyz  R.r
    ${RGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  R.r
    ${RubyGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  file_copier.rb
    ${SasGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  dm_sas7bdat_prog.sas
    ${PythonGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  pythonSecureExecution.py

    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    FileSearch    ${FileSearch}
    Fill Text    Study    FileSearch    ${FileSearch}    .sas\n
    Wait Until Web Element Is Visible    Study    SasThreeBars    ${SasThreeBars}
    Click Web Element    Study    SasThreeBars    ${SasThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsRun    ${ThreeBarsRun}
    Click Web Element    Study    ThreeBarsRun    ${ThreeBarsRun}
    Wait Until Web Element Is Visible    Study    SasGreenTick    ${SasGreenTick}    120
    Wait Until Web Element Is Visible    Study    FileSearch    ${FileSearch}
    Fill Text    Study    FileSearch    ${FileSearch}    .rb\n
    Wait Until Web Element Is Visible    Study    RubyThreeBars    ${RubyThreeBars}
    Click Web Element    Study    RubyThreeBars    ${RubyThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsRun    ${ThreeBarsRun}
    Click Web Element    Study    ThreeBarsRun    ${ThreeBarsRun}
    Wait Until Web Element Is Visible    Study    RubyGreenTick    ${RubyGreenTick}    120
    Wait Until Web Element Is Visible    Study    FileSearch    ${FileSearch}
    Fill Text    Study    FileSearch    ${FileSearch}    .py\n
    Wait Until Web Element Is Visible    Study    PythonThreeBars    ${PythonThreeBars}
    Click Web Element    Study    PythonThreeBars    ${PythonThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsRun    ${ThreeBarsRun}
    Click Web Element    Study    ThreeBarsRun    ${ThreeBarsRun}
    Wait Until Web Element Is Visible    Study    PythonGreenTick    ${PythonGreenTick}    120
    Wait Until Web Element Is Visible    Study    FileSearch    ${FileSearch}
    Fill Text    Study    FileSearch    ${FileSearch}    .r\n
    Wait Until Web Element Is Visible    Study    RThreeBars    ${RThreeBars}
    Click Web Element    Study    RThreeBars    ${RThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsRun    ${ThreeBarsRun}
    Click Web Element    Study    ThreeBarsRun    ${ThreeBarsRun}
    Wait Until Web Element Is Visible    Study    RGreenTick    ${RGreenTick}    120

    Wait Until Web Element Is Visible    Study    FileSearch    ${FileSearch}
    Fill Text    Study    FileSearch    ${FileSearch}    .txt\n
    Wait Until Web Element Is Visible    Study    RubyROutput    ${RubyROutput}
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    FileSearch    ${FileSearch}
    Fill Text    Study    FileSearch    ${FileSearch}    .sas7bdat\n
    Wait Until Web Element Is Visible    Study    SasOutput    ${SasOutput}
    Wait Until Web Element Is Visible    Study    ResultsFolder    ${ResultsFolder}
    Click Web Element    Study    ResultsFolder    ${ResultsFolder}
    Wait Until Web Element Is Visible    Study    FileSearch    ${FileSearch}
    Fill Text    Study    FileSearch    ${FileSearch}    .txt\n
    Wait Until Web Element Is Visible    Study    RubyROutput    ${RubyROutput}
    Wait Until Web Element Is Visible    Study    FileSearch    ${FileSearch}
    Fill Text    Study    FileSearch    ${FileSearch}    python\n
    Wait Until Web Element Is Visible    Study    PythonFolder    ${PythonFolder}
    Click Web Element    Study    PythonFolder    ${PythonFolder}
    Wait Until Web Element Is Visible    Study    FileSearch    ${FileSearch}
    Fill Text    Study    FileSearch    ${FileSearch}    .txt\n
    Wait Until Web Element Is Visible    Study    PythonOutput    ${PythonOutput}

Upload Files to Study
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\raw_dm.sas7bdat     10
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\ae2.xpt     10

Convert Files to CSV
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    sas7bdat    ${sas7bdat}
    Click Web Element    Study    sas7bdat    ${sas7bdat}
    Wait Until Web Element Is Visible    Study    ConvertToCSV    ${ConvertToCSV}
    Click Web Element    Study    ConvertToCSV    ${ConvertToCSV}
    Wait Until Web Element Is Visible    Study    PreparingForViewing    ${PreparingForViewing}
    Wait Until Web Element Is Not Visible    Study    PreparingForViewing    ${PreparingForViewing}     30
    Wait Until Web Element Is Visible    Study    StudyIDColumn    ${StudyIDColumn}
    Wait Until Web Element Is Visible    Study    RowCheckSas    ${RowCheckSas}

    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    xpt    ${xpt}
    Click Web Element    Study    xpt    ${xpt}
    Wait Until Web Element Is Visible    Study    ConvertCSVInline    ${ConvertCSVInline}
    Click Web Element    Study    ConvertCSVInline    ${ConvertCSVInline}
    Wait Until Web Element Is Visible    Study    PreparingForViewing    ${PreparingForViewing}
    Wait Until Web Element Is Not Visible    Study    PreparingForViewing    ${PreparingForViewing}     30
    Wait Until Web Element Is Visible    Study    StudyIDColumn    ${StudyIDColumn}
    Wait Until Web Element Is Visible    Study    RowCheckXpt    ${RowCheckXpt}

Upload Programs to Study for Dependency Check
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas     10
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog_nocomments.sas     10
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\raw_dm.sas7bdat     10
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\input.txt     10

Download Folder and Check
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas     10
    Wait Until Web Element Is Visible    Study    DownloadInStudy    ${DownloadInStudy}
    Click Web Element    Study    DownloadInStudy    ${DownloadInStudy}
    ${modLoadingDownload}=    Replace String  ${LoadingDownload}  xyz  ${StudyData}
    Wait Until Web Element Is Visible    Study    modLoadingDownload    ${modLoadingDownload}
    Sleep    30
    Reload Page
    ${modReadyToDownload}=    Replace String  ${ReadyToDownload}  xyz  ${StudyData}
    Wait Until Web Element Is Visible    Study    modReadyToDownload    ${modReadyToDownload}
    ${file_name}=       Get Text    ${FirstFileName}
    Wait Until Web Element Is Visible    Study    FirstDownloadButton    ${FirstDownloadButton}
    Click Web Element    Study    FirstDownloadButton    ${FirstDownloadButton}     10
    ${file_path}=    Set Variable    C:\\Users\\siddh\\Downloads\\${file_name}
    Run Keyword If   ${{os.path.exists($file_path)}} is False    Fail        File does not exist

Upload and Unzip
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\TestData.zip     15
    ${ZipThreeBars}=    Replace String  ${NamedFileThreeBars}  xyz  TestData.zip
    Wait Until Web Element Is Visible    Study    ZipThreeBars    ${ZipThreeBars}
    Click Web Element    Study    ZipThreeBars    ${ZipThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsUnzip    ${ThreeBarsUnzip}
    Click Web Element    Study    ThreeBarsUnzip    ${ThreeBarsUnzip}
#    Wait Until Web Element Is Visible    Study    UnzipInitiatedPrompt    ${UnzipInitiatedPrompt}
#    Wait Until Web Element Is Not Visible    Study    UnzipInitiatedPrompt    ${UnzipInitiatedPrompt}
#    Wait Until Web Element Is Visible    Study    UnzipFinishedPrompt    ${UnzipFinishedPrompt}
#    Wait Until Web Element Is Not Visible    Study    UnzipFinishedPrompt    ${UnzipFinishedPrompt}
    Wait Until Web Element Is Visible    Study    SasProg    ${SasProg}
    Wait Until Web Element Is Visible    Study    RubyProg    ${RubyProg}

Copy File From Programs to Data
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas     10
    Wait Until Web Element Is Visible    Study    SelectFirstFile    ${SelectFirstFile}
    Click Web Element    Study    SelectFirstFile    ${SelectFirstFile}
    Wait Until Web Element Is Visible    Study    AddToClipboardButton    ${AddToClipboardButton}
    Click Web Element    Study    AddToClipboardButton    ${AddToClipboardButton}
#    Wait Until Web Element Is Visible    Study    AddedToClipboardPrompt    ${AddedToClipboardPrompt}
#    Wait Until Web Element Is Not Visible    Study    AddedToClipboardPrompt    ${AddedToClipboardPrompt}
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    Clipboard    ${Clipboard}
    Click Web Element    Study    Clipboard    ${Clipboard}
    Wait Until Web Element Is Visible    Study    SelectAllClipboard    ${SelectAllClipboard}
    Click Web Element    Study    SelectAllClipboard    ${SelectAllClipboard}
    Wait Until Web Element Is Visible    Study    PasteHere    ${PasteHere}
    Click Web Element    Study    PasteHere    ${PasteHere}
    Wait Until Web Element Is Visible    Study    Clipboard    ${Clipboard}
    Click Web Element    Study    Clipboard    ${Clipboard}
    Wait Until Web Element Is Visible    Study    SasProg    ${SasProg}

Move File From Programs to Results
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas     10
    Wait Until Web Element Is Visible    Study    SelectFirstFile    ${SelectFirstFile}
    Click Web Element    Study    SelectFirstFile    ${SelectFirstFile}
    Wait Until Web Element Is Visible    Study    AddToClipboardButton    ${AddToClipboardButton}
    Click Web Element    Study    AddToClipboardButton    ${AddToClipboardButton}
    Wait Until Web Element Is Visible    Study    ResultsFolder    ${ResultsFolder}
    Click Web Element    Study    ResultsFolder    ${ResultsFolder}
    Wait Until Web Element Is Visible    Study    Clipboard    ${Clipboard}
    Click Web Element    Study    Clipboard    ${Clipboard}
    Wait Until Web Element Is Visible    Study    SelectAllClipboard    ${SelectAllClipboard}
    Click Web Element    Study    SelectAllClipboard    ${SelectAllClipboard}
    Wait Until Web Element Is Visible    Study    MoveHere    ${MoveHere}
    Click Web Element    Study    MoveHere    ${MoveHere}
    Handle Alert
    Wait Until Web Element Is Visible    Study    SasProg    ${SasProg}
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Not Visible    Study    SasProg    ${SasProg}

Upload Single File to Study
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas     10

Upload and Run a Single Program
    ${RubyThreeBars}=    Replace String  ${NamedFileThreeBars}  xyz  file_copier.rb
    ${RubyGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  file_copier.rb
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\file_copier.rb     10
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\input.txt     10
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    RubyThreeBars    ${RubyThreeBars}
    Click Web Element    Study    RubyThreeBars    ${RubyThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsRun    ${ThreeBarsRun}
    Click Web Element    Study    ThreeBarsRun    ${ThreeBarsRun}
    Wait Until Web Element Is Visible    Study    RubyGreenTick    ${RubyGreenTick}     120
    Wait Until Web Element Is Visible    Study    ResultsFolder    ${ResultsFolder}
    Click Web Element    Study    ResultsFolder    ${ResultsFolder}
    Wait Until Web Element Is Visible    Study    RubyROutput    ${RubyROutput}

Upload and Create Special Character Files
    Unzip File    ${TEST_DATA_DIR}\\SpecialCharFiles.zip    ${TEST_DATA_DIR}
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\input.txt     10
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\Test~ @ # $ % ^ + = { } [ ] ; ,.txt     10
    Wait Until Web Element Is Visible    Study    SpecialCharFileVerify    ${SpecialCharFileVerify}
    Wait Until Web Element Is Visible    Study    New    ${New}
    Click Web Element    Study    New    ${New}
    Wait Until Web Element Is Visible    Study    CreateNewFile    ${CreateNewFile}
    Click Web Element    Study    CreateNewFile    ${CreateNewFile}
    Wait Until Web Element Is Visible    Study    SaveFileButton    ${SaveFileButton}
    Click Web Element    Study    SaveFileButton    ${SaveFileButton}
    Wait Until Web Element Is Visible    Study    InputFileName    ${InputFileName}
    Click Web Element    Study    InputFileName    ${InputFileName}
    Fill Text    Study    InputFileName    ${InputFileName}      test2Test~ @ # $ % ^ + = { } [ ] ; ,.txt
    Wait Until Web Element Is Visible    Study    CreateFileButton    ${CreateFileButton}
    Click Web Element    Study    CreateFileButton    ${CreateFileButton}
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    NewSpecialCharFileVerify    ${NewSpecialCharFileVerify}
    Wait Until Web Element Is Visible    Study    FileThreeBars    ${FileThreeBars}
    Click Web Element    Study    FileThreeBars    ${FileThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsRename    ${ThreeBarsRename}
    Click Web Element    Study    ThreeBarsRename    ${ThreeBarsRename}
    Wait Until Web Element Is Visible    Study    RenameInput    ${RenameInput}
    Fill Text    Study    RenameInput    ${RenameInput}    Test {Space ~ @ # $ % ^ + = { } [ ] ; ,.txt\n
    Wait Until Web Element Is Visible    Study    RenamedSpecialCharFileVerify    ${RenamedSpecialCharFileVerify}

Upload and Run Special Character Program
    Unzip File    ${TEST_DATA_DIR}\\SpecialCharFiles.zip    ${TEST_DATA_DIR}
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\input!@#().txt     10
    Wait Until Web Element Is Visible    Study    SpecialCharProgInputVerify    ${SpecialCharProgInputVerify}
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\rubyprogram!@#().rb     10
    Wait Until Web Element Is Visible    Study    SpecialCharProgVerify    ${SpecialCharProgVerify}
    ${RubyThreeBars}=    Replace String  ${NamedFileThreeBars}  xyz  rubyprogram!@#().rb
    ${RubyGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  rubyprogram!@#().rb
    Wait Until Web Element Is Visible    Study    RubyThreeBars    ${RubyThreeBars}
    Click Web Element    Study    RubyThreeBars    ${RubyThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsRun    ${ThreeBarsRun}
    Click Web Element    Study    ThreeBarsRun    ${ThreeBarsRun}
    Wait Until Web Element Is Visible    Study    RubyGreenTick    ${RubyGreenTick}     120
    Wait Until Web Element Is Visible    Study    SpecialCharProgOutputVerify    ${SpecialCharProgOutputVerify}
    Wait Until Web Element Is Visible    Study    RubyThreeBars    ${RubyThreeBars}
    Click Web Element    Study    RubyThreeBars    ${RubyThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsHistory    ${ThreeBarsHistory}
    Click Web Element    Study    ThreeBarsHistory    ${ThreeBarsHistory}
    Wait Until Web Element Is Visible    Study    SpecialCharProgVerify    ${SpecialCharProgVerify}
    Click Web Element    Study    SpecialCharProgVerify    ${SpecialCharProgVerify}
    Wait Until Web Element Is Visible    Study    OutputFileInReportVerify    ${OutputFileInReportVerify}
    Wait Until Web Element Is Visible    Study    TraceabilityReportButton    ${TraceabilityReportButton}
    Click Web Element    Study    TraceabilityReportButton    ${TraceabilityReportButton}
    Wait Until Web Element Is Visible    Study    OutputFileInReportVerify    ${OutputFileInReportVerify}

Upload and Copy and Move Special Character File
    Unzip File    ${TEST_DATA_DIR}\\SpecialCharFiles.zip    ${TEST_DATA_DIR}
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\Test~ @ # $ % ^ + = { } [ ] ; ,.txt     10
    Wait Until Web Element Is Visible    Study    SpecialCharFileVerify    ${SpecialCharFileVerify}
    Wait Until Web Element Is Visible    Study    SelectFirstFile    ${SelectFirstFile}
    Click Web Element    Study    SelectFirstFile    ${SelectFirstFile}
    Wait Until Web Element Is Visible    Study    AddToClipboardButton    ${AddToClipboardButton}
    Click Web Element    Study    AddToClipboardButton    ${AddToClipboardButton}
    Wait Until Web Element Is Visible    Study    ResultsFolder    ${ResultsFolder}
    Click Web Element    Study    ResultsFolder    ${ResultsFolder}
    Wait Until Web Element Is Visible    Study    Clipboard    ${Clipboard}
    Click Web Element    Study    Clipboard    ${Clipboard}
    Wait Until Web Element Is Visible    Study    SelectAllClipboard    ${SelectAllClipboard}
    Click Web Element    Study    SelectAllClipboard    ${SelectAllClipboard}
    Wait Until Web Element Is Visible    Study    PasteHere    ${PasteHere}
    Click Web Element    Study    PasteHere    ${PasteHere}
    Wait Until Web Element Is Visible    Study    Clipboard    ${Clipboard}
    Click Web Element    Study    Clipboard    ${Clipboard}
    Wait Until Web Element Is Visible    Study    SpecialCharFileVerify    ${SpecialCharFileVerify}
    Wait Until Web Element Is Visible    Study    DocumentsFolder    ${DocumentsFolder}
    Click Web Element    Study    DocumentsFolder    ${DocumentsFolder}
    Wait Until Web Element Is Visible    Study    Clipboard    ${Clipboard}
    Click Web Element    Study    Clipboard    ${Clipboard}
    Wait Until Web Element Is Visible    Study    SelectAllClipboard    ${SelectAllClipboard}
    Click Web Element    Study    SelectAllClipboard    ${SelectAllClipboard}
    Wait Until Web Element Is Visible    Study    MoveHere    ${MoveHere}
    Click Web Element    Study    MoveHere    ${MoveHere}
    Handle Alert
    Wait Until Web Element Is Visible    Study    SpecialCharFileVerify    ${SpecialCharFileVerify}
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Not Visible    Study    SpecialCharFileVerify    ${SpecialCharFileVerify}

Upload all Special Char Files
    Unzip File    ${TEST_DATA_DIR}\\SpecialCharFiles.zip    ${TEST_DATA_DIR}
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Study    UploadFile    ${UploadFile}
    Fill Text    Study    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\Test~ @ # $ % ^ + = { } [ ] ; ,.txt     10
    Wait Until Web Element Is Visible    Study    SpecialCharFileVerify    ${SpecialCharFileVerify}
    Wait Until Web Element Is Visible    Study    New    ${New}
    Click Web Element    Study    New    ${New}
    Wait Until Web Element Is Visible    Study    CreateNewFile    ${CreateNewFile}
    Click Web Element    Study    CreateNewFile    ${CreateNewFile}
    Wait Until Web Element Is Visible    Study    SaveFileButton    ${SaveFileButton}
    Click Web Element    Study    SaveFileButton    ${SaveFileButton}
    Wait Until Web Element Is Visible    Study    InputFileName    ${InputFileName}
    Click Web Element    Study    InputFileName    ${InputFileName}
    Fill Text    Study    InputFileName    ${InputFileName}      test2Test~ @ # $ % ^ + = { } [ ] ; ,.txt
    Wait Until Web Element Is Visible    Study    CreateFileButton    ${CreateFileButton}
    Click Web Element    Study    CreateFileButton    ${CreateFileButton}
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    NewSpecialCharFileVerify    ${NewSpecialCharFileVerify}

Create Batch and Add Programs
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    ManageButton    ${ManageButton}
    Click Web Element    Study    ManageButton    ${ManageButton}
    Wait Until Web Element Is Visible    Study    BatchesButton    ${BatchesButton}
    Click Web Element    Study    BatchesButton    ${BatchesButton}
    Wait Until Web Element Is Visible    Study    CreateBatchButton    ${CreateBatchButton}
    Click Web Element    Study    CreateBatchButton    ${CreateBatchButton}
    Wait Until Web Element Is Visible    Study    InputBatchName    ${InputBatchName}
    Click Web Element    Study    InputBatchName    ${InputBatchName}
    Fill Text    Study    InputBatchName    ${InputBatchName}    batch1

    ${PythonProgInList}=    Replace String  ${ProgInList}  xyz  pythonSecureExecution.py
    ${RubyProgInList}=    Replace String  ${ProgInList}  xyz  file_copier.rb
    ${RProgInList}=    Replace String  ${ProgInList}  xyz  R.r
    ${SasProgInList}=    Replace String  ${ProgInList}  xyz  dm_sas7bdat_prog.sas
#    Wait Until Web Element Is Visible    Study    BatchProgramSelect    ${BatchProgramSelect}
#    Click Web Element    Study    BatchProgramSelect    ${BatchProgramSelect}
#    Wait Until Web Element Is Visible    Study    PythonProgInList    ${PythonProgInList}
#    Click Web Element    Study    PythonProgInList    ${PythonProgInList}
    Wait Until Web Element Is Visible    Study    BatchProgramSelect    ${BatchProgramSelect}
    Click Web Element    Study    BatchProgramSelect    ${BatchProgramSelect}
    Wait Until Web Element Is Visible    Study    RubyProgInList    ${RubyProgInList}
    Click Web Element    Study    RubyProgInList    ${RubyProgInList}
    Wait Until Web Element Is Visible    Study    BatchProgramSelect    ${BatchProgramSelect}
    Click Web Element    Study    BatchProgramSelect    ${BatchProgramSelect}
    Wait Until Web Element Is Visible    Study    RProgInList    ${RProgInList}
    Click Web Element    Study    RProgInList    ${RProgInList}
#    Wait Until Web Element Is Visible    Study    BatchProgramSelect    ${BatchProgramSelect}
#    Click Web Element    Study    BatchProgramSelect    ${BatchProgramSelect}
#    Wait Until Web Element Is Visible    Study    SasProgInList    ${SasProgInList}
#    Click Web Element    Study    SasProgInList    ${SasProgInList}

    Wait Until Web Element Is Visible    Study    ConfirmCreateBatch    ${ConfirmCreateBatch}
    Click Web Element    Study    ConfirmCreateBatch    ${ConfirmCreateBatch}
    Wait Until Web Element Is Visible    Study    BatchConfirmationPrompt    ${BatchConfirmationPrompt}

    ${PythonProgInBatch}=    Replace String  ${ProgInBatch}  xyz  pythonSecureExecution.py
    ${RubyProgInBatch}=    Replace String  ${ProgInBatch}  xyz  file_copier.rb
    ${RProgInBatch}=    Replace String  ${ProgInBatch}  xyz  R.r
    ${SasProgInBatch}=    Replace String  ${ProgInBatch}  xyz  dm_sas7bdat_prog.sas
    Wait Until Web Element Is Visible    Study    RubyProgInBatch    ${RubyProgInBatch}
    Wait Until Web Element Is Visible    Study    RProgInBatch    ${RProgInBatch}
#    Wait Until Web Element Is Visible    Study    PythonProgInBatch    ${PythonProgInBatch}
#    Wait Until Web Element Is Visible    Study    SasProgInBatch    ${SasProgInBatch}

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
    Wait Until Web Element Is Visible    Study    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Study    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Study    LastThreeBars    ${LastThreeBars}
    Click Web Element    Study    LastThreeBars    ${LastThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsRun    ${ThreeBarsRun}
    Click Web Element    Study    ThreeBarsRun    ${ThreeBarsRun}
    Wait Until Web Element Is Visible    Study    LastThreeBars    ${LastThreeBars}
    Click Web Element    Study    LastThreeBars    ${LastThreeBars}
#    Wait Until Web Element Is Visible    Study    LastThreeBars    ${LastThreeBars}
#    Click Web Element    Study    LastThreeBars    ${LastThreeBars}
#    Wait Until Web Element Is Visible    Study    ThreeBarsRun    ${ThreeBarsRun}
#    Click Web Element    Study    ThreeBarsRun    ${ThreeBarsRun}
#    Wait Until Web Element Is Visible    Study    BatchRunConfirmPrompt    ${BatchRunConfirmPrompt}

    ${RGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  R.r
    ${RubyGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  file_copier.rb
    ${SasGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  dm_sas7bdat_prog.sas
    ${PythonGreenTick}=    Replace String  ${ProgRunGreenTick}  xyz  pythonSecureExecution.py
    Wait Until Web Element Is Visible    Study    RGreenTick    ${RGreenTick}     120
    Wait Until Web Element Is Visible    Study    RubyGreenTick    ${RubyGreenTick}     120
#    Wait Until Web Element Is Visible    Study    PythonGreenTick    ${PythonGreenTick}      120
#    Wait Until Web Element Is Visible    Study    SasGreenTick    ${SasGreenTick}      120

#    Wait Until Web Element Is Visible    Study    LastThreeBars    ${LastThreeBars}
#    Click Web Element    Study    LastThreeBars    ${LastThreeBars}
    Wait Until Web Element Is Visible    Study    LastThreeBars    ${LastThreeBars}
    Click Web Element    Study    LastThreeBars    ${LastThreeBars}
    Wait Until Web Element Is Visible    Study    ThreeBarsHistory    ${ThreeBarsHistory}
    Click Web Element    Study    ThreeBarsHistory    ${ThreeBarsHistory}
    Wait Until Web Element Is Visible    Study    OkPromptInHistory    ${OkPromptInHistory}

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
