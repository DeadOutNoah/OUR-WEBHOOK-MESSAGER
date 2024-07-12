@echo off
title= Bot messager
:messagesender
cls
echo BOT MESSAGER
set /p "webhook= Enter Discord webhook URL for Message Sender: "
set /p "message= Enter the message to send: "
set /p "num_times= Enter the number of times to send the message: "

for /l %%n in (1,1,%num_times%) do (
    :: Send message to Discord webhook
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
)
echo Messages sent successfully.
pause
goto messagesender

