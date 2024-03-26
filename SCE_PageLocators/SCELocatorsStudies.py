NewFolder="xpath://a[contains(@title,'Create a new folder')]"
RootFolders = "id:root-folders-link"
FolderNameInput = "id:folder_name"
FolderTypeButton = "id:select2-folder_folder_type_id-container"
FolderTypeSelect = "id:folder_folder_type_id"
PermissionTypeButton = "id:select2-folder_permission_type-container"
PermissionTypeSelect = "id:folder_permission_type"
CreateFolder = "xpath://input[@name='commit']"
SelectSearch = "xpath://input[@role='searchbox']"
# Search = "xpath:(//input[@placeholder='Search'])[2]"
Folders = "xpath://span[@class='file-name-cell']//a"
FolderConfirmed = "xpath://span[text()='Folder successfully created.']"
# ResultsFolder = "xpath://a[@title='results']"
# PythonFolder = "xpath://a[text()='python']"
# ProgramsFolder = "xpath://a[@title='programs']"
# DataFolder = "xpath://a[@title='data']"
ResultsFolder = "xpath://*[text()='results']"
PythonFolder = "xpath://*[text()='python']"
ProgramsFolder = "xpath://*[text()='programs']"
DataFolder = "xpath://*[text()='data']"
DocumentsFolder = "xpath://*[text()='documents']"

NewStudy = "xpath://a[contains(@title,'Create a new study')]"
NewLibrary = "xpath://a[contains(@title,'Create a new library')]"
NewProject = "xpath://a[contains(@title,'Create a new project')]"
LibProjButton = "id:select2-study_parent_id-container"
LibProjSelect = "xpath:(//select[contains(@class,'select_storage')])[1]"
# FirstLibrary = "xpath://li[@id='select2-study_parent_id-result-uloe-7558']//i[@class='fa fa-briefcase']"
TemplateButton = "id:select2-template_id-container"
StudySearch = "xpath://input[@role='searchbox']"
TemplateSelect = "xpath:(//select[contains(@class,'select_storage')])[2]"
StudyNumber = "id:study_study_number"
StudyName = "id:study_name"
StudyTitle = "id:study_title"
IsTemplate = "id:study_is_template"
StorageButton = "id:select2-study_storage_id-container"
StorageSelect = "id:study_storage_id"
CreateStudy = "xpath://input[@name='commit']"
StudyConfirmed = "xpath://span[text()='Study was successfully created.']"
LibraryConfirmed = "xpath://span[text()='Library was successfully created.']"
ProjectConfirmed = "xpath://span[text()='Project was successfully created.']"
StudyRequest = "xpath://span[contains(text(),'Your study creation request has been initiated.')]"

Search = "xpath://input[@placeholder='Search']"
SearchResults = "xpath://a[@data-no-turbolink]"
Repository = "xpath://span[text()='Repository']"
UploadFile = "xpath://input[@id='user_file_attachment']"
SasProg = "xpath://a[text()='dm_sas7bdat_prog.sas']"
RubyProg = "xpath://a[text()='file_copier.rb']"
PythonProg = "xpath://a[text()='pythonSecureExecution.py']"
RProg = "xpath://a[text()='R.r']"
SasOutput = "xpath://a[text()='dm.sas7bdat']"
RubyROutput = "xpath://a[text()='output.txt']"
PythonOutput = "xpath://a[text()='output0.txt']"
NamedFileThreeBars = "xpath:(//a[text()='xyz']/parent::span/parent::td/preceding-sibling::td)[2]//i[@class='fa fa-bars']"
FileThreeBars = "xpath://i[@class='fa fa-bars']"
SecondThreeBars = "xpath:(//i[@class='fa fa-bars'])[2]"
ThirdThreeBars = "xpath:(//i[@class='fa fa-bars'])[3]"
LastThreeBars = "xpath:(//i[@class='fa fa-bars'])[last()]"
ThreeBarsRun = "xpath://a[@aria-label='Run']"
ThreeBarsUnzip = "xpath://a[@aria-label='Unzip']"
ThreeBarsHistory = "xpath://a[@aria-label='History']"
FileSearch = "xpath:(//input[@placeholder='Search'])[2]"
sas7bdat = "xpath://a[text()='raw_dm.sas7bdat']"
xpt = "xpath://a[text()='ae2.xpt']"
PreparingForViewing = "xpath://span[contains(text(),'Preparing for viewing')]"
StudyIDColumn = "xpath://th[contains(@class,'cell')]//span[text()='STUDYID']"
RowCheckSas = "xpath://tr[contains(@class,'table__row')]//td[text()='DM']"
RowCheckXpt = "xpath://tr[contains(@class,'table__row')]//td[text()='AE']"
ConvertCSVInline = "xpath://a[@class='unsupported-file--convert btn btn--primary']"
UnzipInitiatedPrompt = "xpath://span[text()='File extraction initiated.']"
UnzipFinishedPrompt = "xpath://span[text()='Zip Extraction Completed.']"
SelectFirstFile = "xpath://span[contains(@class,'file_select')]//input[@type='checkbox']"
AddToClipboardButton = "xpath://button[contains(@class,'add-to-clipboard')]"
AddedToClipboardPrompt = "xpath://span[text()='Successfully added to clipboard.']"
SelectAllClipboard = "xpath://input[@name='clip-checkbox-select']"
PasteHere = "xpath://button[@class='btn js-paste-clipboard-items']"
MoveHere = "xpath://button[@class='btn js-move-clipboard-items ']"
SpecialCharFileVerify = "xpath://a[text()='Test~ @ # $ % ^ + = { } [ ] ; ,.txt']"
CreateNewFile = "id:new-empty-file"
SaveFileButton = "id:save_file_btn"
InputFileName = "id:user_file_attachment_file_name"
CreateFileButton = "xpath://input[@name='commit']"
NewSpecialCharFileVerify = "xpath://a[text()='test2Test~ @ # $ % ^ + = { } [ ] ; ,.txt']"
RenamedSpecialCharFileVerify = "xpath://a[text()='Test {Space ~ @ # $ % ^ + = { } [ ] ; ,.txt']"
ThreeBarsRename = "xpath://a[@aria-label='Rename']"
RenameInput = "xpath://input[@name='name']"
SpecialCharProgVerify = "xpath://a[text()='rubyprogram!@#().rb']"
SpecialCharProgInputVerify = "xpath://a[text()='input!@#().txt']"
SpecialCharProgOutputVerify = "xpath://a[text()='rubyoutput~ @ # $ % ^ + = { } [ ] ; ,.txt']"
OutputFileInReportVerify = "xpath://*[contains(text(),'rubyoutput~ @ # $ % ^ + = { } [ ] ; ,.txt')]"
TraceabilityReportButton = "xpath://a[@title='View Traceability Report']"
ManageButton = "xpath://a[@id='js-manage-dropdown']"
BatchesButton = "xpath://a[normalize-space()='Batches']"
CreateBatchButton = "xpath://a[normalize-space()='Create Batch']"
InputBatchName = "xpath://input[@id='sce_batch_name']"
BatchProgramSelect = "xpath://ul[@class='select2-selection__rendered']"
ProgInList = "xpath://li[contains(text(),'xyz')]"
# PythonProgInList = "xpath://li[contains(text(),'pythonSecureExecution.py')]"
# RubyProgInList = "xpath://li[contains(text(),'file_copier.rb')]"
# RProgInList = "xpath://li[contains(text(),'R.r')]"
# SasProgInList = "xpath://li[contains(text(),'dm_sas7bdat_prog.sas')]"
ConfirmCreateBatch = "xpath://input[@name='commit']"
BatchConfirmationPrompt = "xpath://span[text()='Batch successfully created.']"
ProgInBatch = "xpath://*[contains(text(),'xyz')]"
# PythonProgInBatch = "xpath://*[contains(text(),'pythonSecureExecution.py')]"
# RubyProgInBatch = "xpath://*[contains(text(),'file_copier.rb')]"
# RProgInBatch = "xpath://*[contains(text(),'R.r')]"
# SasProgInBatch = "xpath://*[contains(text(),'dm_sas7bdat_prog.sas')]"
BatchRunConfirmPrompt = "xpath://span[text()='No jobs need running.']"
ProgRunningIndicator = "xpath://a[contains(@class,'study-job-state pulse')]"
ProgRunGreenTick = "xpath:(//a[text()='xyz']/parent::span/parent::td/preceding-sibling::td)[last()]//i[@class='fa fa-check success']"
OkPromptInHistory = "xpath://a[@class='status--ok']"
MainSearchBar = "xpath://input[@placeholder='Search']"
FirstSearchResult = "xpath:(//a[@data-no-turbolink='true'])[1]"
FirstItemInStudy = "xpath:(//span[@class='file-name-cell '])[1]"
EnterFolderName = "xpath://*[text()='xyz']"
JsonFileInStudy = "xpath://a[contains(text(),'.json')]"
RubyFileInStudy = "xpath://a[contains(text(),'.rb')]"
