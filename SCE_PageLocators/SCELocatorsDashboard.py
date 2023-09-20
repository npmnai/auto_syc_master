SCELogo="xpath://span[contains(text(),'CDR - SCE')]"
New="xpath://*[@class='fa fa-caret-down']"
UserOptions="xpath://a[@class='dropdown-toggle']/i[@class='fa fa-user']"
Promote="xpath://a[@title='Promote Session User Role']"
Manage="xpath://a[@title='Manage']"
ManageOrgText="xpath://h2[text()='Manage Organization']"
Organization="xpath://a[@title='Organization']"
Steps="xpath://a[@title='Steps']"



def getXpathProductLogo():
    xpath="//a[@class='product-logo product-logo--small product-logo--sce']"
    return xpath
def getXpathIconUser():
    xpath="//a[@class='dropdown-toggle']/i[@class='fa fa-user']"
    return xpath
def getXpathLinkPromoteSessionRole():
    xpath="//a[@title='Promote Session User Role']"
    return xpath
def getXpathDropdownNew():
    xpath="//*[@class='fa fa-caret-down']"
    return xpath
def getXpathLinkManageOrg():
    xpath="//a[@title='Manage']/i[@class='fa fa-sitemap']"
    return xpath

