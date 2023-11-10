SignInEmailTextField="id:user_email"
SignInPasswordTextField="id:user_password"
SignInButton="name:commit"
LogoutLink="xpath://a[@title='Logout']"

def getXpathTextLoginPassword():
    xpath="xpath=//input[@id='user_password']"
    return xpath
def getXpathButtonSignIn():
    xpath="xpath=//input[@name='commit']"
    return xpath
def getXpathProductLogo():
    xpath="xpath=//span[contains(text(),'CDR - SCE')]"
    return xpath

