def getXpathLinkNewMenu():
    xpath="//a[@class='dropdown-toggle'][contains(text(),'New')]"
    return xpath
def getXpathLinkAddFile():
    xpath="//a[@id='new-empty-file']"
    return xpath
def getXpathLinkNewFolder():
    xpath="//a[@title='Create a new folder']"
    return xpath
def getXpathLinkUpload():
    xpath="//a[@title='Upload a file']"
    return xpath
def getXpathLinkClipboard():
    xpath="//a[@title='Clipboard' and @class='clipboard_link']"
    return xpath
def getXpathLinkWorkspaces():
    xpath="//span[@id='branch-selector']"
    return xpath
def getXpathLinkManage():
    xpath="//a[@class='dropdown-toggle' and contains(.,'Manage')]"
    return xpath
def getXpathLinkUnblindStudy():
    xpath="//a[contains(text(),'Unblind Study')]"
    return xpath
def getXpathLinkEditStudy():
    xpath="//a[contains(text(),'Edit Study')]"
    return xpath
def getXpathLinkDeleteStudy():
    xpath="//a[contains(text(),'Delete Study')]"
    return xpath
def getXpathLinkSources():
    xpath="//a[contains(text(),'Sources')]"
    return xpath
def getXpathLinkDownload():
    xpath="//a[@id='download-folder']"
    return xpath
def getXpathLinkAllOperations():
    xpath="//a[text()='All Operations']"
    return xpath
def getXpathTextStudyPageTitle():
    xpath="//title[contains(text(),'StudyNameToBeReplaced')]"
    return xpath
def getXpathMangeRoles():
    xpath="//*[@id='study_listing_tools']/li[1]/a"
    return xpath
def getXpathAddNewStudyRole():
    xpath="//button[text()='Add New Study Role']"
    return xpath
def getXpathStudyRoleMenuOption():
    xpath="//span[contains(text(),'New Study Role')]//parent::span/span[2]/i"
    return xpath
def getXpathStudyRoleRenameOption():
    xpath="//div[text()='Rename Role']"
    return xpath
def getXpathInputNewStudyRole():
    xpath="//Input[contains(@value,'New Study Role')]"
    return xpath
def getXpathSudyRoleCreationMessage():
    xpath="//div[@class='notify__container']/span"
    return xpath
def getXpathRoleActionMenu():
    xpath="//span[contains(text(),'roleNameToBeReplaced')]//following-sibling::span/i"
    return xpath
def getXpathRenameOption():
    xpath="//div[text()='Rename Role']"
    return xpath
def getXpathInputRenameTextbox():
    xpath="//input[@value='roleNameToBeReplaced']"
    return xpath
def getXpathEditInputRenameTextbox():
    xpath="//input[@type='text']"
    return xpath
def getXpathTexthManageRole():
    xpath="//li[contains(text(),'Manage Roles')]"
    return xpath

def getXpathCheckboxStudyTemplate():
    xpath="//input[@id='study_is_template']"
    return xpath
def getXpathDropDownStudyTemplate():
    xpath="//span[contains(@id,'-template_id-container')]"
    return xpath
