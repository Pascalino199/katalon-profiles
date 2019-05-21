###Script to start Selenium grid (same folder as the script)
###sleep 3sec
###start all the phones in new windows
echo '==Initialisation of the farm=='
echo '==Starting Selenium Grid=='
echo 'cd grid;java -jar selenium-server-standalone-3.141.59.jar -role hub' > 5.command; chmod +x 5.command; open -a iTerm -n 5.command
sleep 5
echo 'Mobile 1 : emulator-5554'
echo 'appium --session-override --nodeconfig /Users/pascalvanhuffelen/grid/emu.json -p 4728 --bootstrap-port 2252 --udid emulator-5554;bash' > 2.command; chmod +x 2.command; open -a iTerm -n 2.command
echo 'Mobile 2: my Huawei'
echo 'appium --session-override --nodeconfig /Users/pascalvanhuffelen/grid/hua.json -p 4727 --bootstrap-port 2252 --udid QHC0215C28010076;bash' > 3.command; chmod +x 3.command; open -a iTerm -n 3.command
echo 'Mobile 3: iPhone 11.1'
echo 'appium --session-override --nodeconfig /Users/pascalvanhuffelen/grid/iphone.json -p 4726 --bootstrap-port 2252 --udid 651f4e4be66f7b2c300d46766baba1aeb0299d32;bash' > 4.command; chmod +x 4.command; open -a iTerm -n 4.command
echo 'ngrok: launch on http port 4444'
./ngrok http 4444
