*** Settings ***
Library  SeleniumLibrary
Library    ../Libraries/Common.py
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py
Variables  ../SCE_PageLocators/SCELocatorsUserAccess.py
Variables  ../SCE_PageLocators/SCELocatorsAppFolders.py

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

Assign User
    Wait Until Element Is Visible    ${AccessButton}
    Click Element    ${AccessButton}
    Wait Until Element Is Visible    ${UserSearchInput}
    Click Element    ${UserSearchInput}
    Wait Until Element Is Visible    ${UserSearchInput}
    Input Text    ${UserSearchInput}    Internal QA
    Wait Until Element Is Visible    ${FirstUserChoice}
    Click Element    ${FirstUserChoice}
    Sleep    2
    Wait Until Element Is Visible    ${UserSearchClose}
    Click Element    ${UserSearchClose}
    Wait Until Element Is Visible    ${RoleSelect}
    Click Element    ${RoleSelect}
    Sleep    2
    Wait Until Element Is Visible    ${RoleInput}
    Input Text    ${RoleInput}    test\n
    Sleep    2
    Wait Until Element Is Visible    ${AssignButton}
    Click Element    ${AssignButton}
    Sleep    2
    Wait Until Element Is Visible    ${AssignYes}
    Click Element    ${AssignYes}
    Wait Until Element Is Visible    ${AssignmentConfirm}
    Sleep    2

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
