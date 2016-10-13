*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}         localhost:8080
${BROWSER}        chrome
${DELAY}          0
${VALID USER}     j2ee
${VALID PASSWORD}    j2ee
${HOME_URL}       http://${SERVER}/jpetstore
${LOGIN_URL}      http://${SERVER}/jpetstore/actions/Account.action
${WELCOME_URL}    http://${SERVER}/jpetstore/actions/Catalog.action

*** Keywords ***
打开浏览器到系统主页
   Open Browser    ${LOGIN URL}    ${BROWSER}
   Maximize Browser Window
   Set Selenium Speed    ${DELAY}
   验证系统主页应该被打开

验证系统主页应该被打开
   Title Should Be    JPetStore Demo

验证登录页面应该被打开
   Title Should Be    JPetStore Demo

跳转到登录页面
   Go To    ${LOGIN_URL}
   验证登录页面应该被打开

输入用户名
   [Arguments]    ${username}
   Input Text    username    ${username}

输入密码
   [Arguments]    ${password}
   Input Text    password    ${password}

点击登录
   Click Button    signon

验证系统登录成功并且跳转到商店首页
   Location Should Be    ${WELCOME_URL}
   Title Should Be    JPetStore Demo
