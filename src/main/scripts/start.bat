@echo off

set WORK_HOME=%~dp0..

set LOCALCLASSPATH=%WORK_HOME%\.;%WORK_HOME%\conf
for %%f in (%WORK_HOME%\lib\*.jar) do call %WORK_HOME%\bin\lcp %%f
for %%f in (%WORK_HOME%\conf\*.*) do call %WORK_HOME%\bin\lcp %%f

:execute
echo java -classpath %LOCALCLASSPATH% %1 %2 %3 %4 %5 %6 %7 %8 %9
java -classpath %LOCALCLASSPATH% com.boful.itools.ui.graphics.IToolsApp

pause