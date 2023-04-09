#!/bin/bash

FailedItem=()
#some testign sites operated differently when using curls UA, setting a Firefox one to simulate a live request
user_agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'

Adult-filter(){

Adult=("https://www.xhamster.com" "https://www.brazzers.com" "https://www.hclips.com" "https://www.shooshtime.com" "https://www.chaturbate.com" "https://www.donkparty.com" "https://www.lustery.com" "https://www.allpornstream.com" "https://www.pornhub.com" "https://www.pornstaraddict.com" "https://www.xrateduniversity.com" "https://www.youporn.com" "https://www.voyeurhit.com" "https://www.xnxx.com" "https://www.hotmovs.com" "https://www.tnaflix.com" "https://www.xxxratedchicks.com" "https://www.hdzog.com" "https://www.redtube.com" "https://www.xvideos.com" "https://www.youjizz.com" "https://www.thumbzilla.com" "https://www.beeg.com" "https://www.vjav.com" "https://www.nuvid.com" "https://www.upornia.com" "https://www.manysex.com" "https://www.sunporno.com" "https://www.redgifs.com")

blocked=()
for url in "${Adult[@]}" 
do
    {
        check=$(curl -s -A $user-agent -L -o /dev/null -w "%{http_code}" $url)
        if [ "$check" != 200 ]; then
            blocked+=$url
			echo $url " blocked with status code: "$check
        fi
        
    } || {
		FailedItem+=$url
    }
done
echo "[Adult Category] - ${#blocked[@]} out of ${#Adult[@]} sites were blocked"
FailedItem+="Adult-filter"
}

Gambling-filter(){

Gambling=(
"https://www.ignitioncasino.eu"
"https://www.slots.lv"
"https://www.bovada.lv"
"https://www.cafecasino.lv"
"https://www.mybookie.ag"
"https://reddogcasino.com"
"https://www.bitstarz.com"
"https://csgoempire.com"
"https://www.superslots.ag"
"https://sports.everygame.eu"
"https://www.wildcasino.ag"
"https://lasatlantis.com"
"https://www.blackchippoker.eu"
"https://www.americascardroom.eu"
"https://www.jackpotcitycasino.com"
"https://www.royalvegascasino.com"
"https://www.888casino.com"
"https://www.rubyfortune.com"
"https://www.bigspincasino.com"
"https://www.juicystakes.eu"
"https://www.mfortune.co.uk"
"https://www.casino.com"
"https://www.casinorex.com"
"https://sports.ladbrokes.com"
"https://www.mrspin.co.uk")

blocked2=();
for url in "${Gambling[@]}" 
do
    {
    check=$(curl -s -A $user-agent -L -o /dev/null -w "%{http_code}" $url)
        if [ "$check" != 200 ]; then
            blocked2+=$url
			echo $url " blocked"
        fi    
    
    } || {
		FailedItem+=$url
    }
done
echo "[Gambling Category] - ${#blocked2[@]} out of ${#Gambling[@]} sites were blocked"
FailedItem+="Gambling-filter"
}

Sports-filter(){
Sportbetting=(
"https://www.draftkings.com"
"https://caesars.com/sportsbook-and-casino"
"https://www.fanduel.com"
"https://www.barstoolsportsbook.com"
"https://sports.va.betmgm.com/en/sports"
"https://nj.pointsbet.com"
"https://www.888sport.com")

blocked3=();
for url in "${Sportbetting[@]}" 
do
    {
        check=$(curl -s -A $user-agent -L -o /dev/null -w "%{http_code}" $url)
        if [ "$check" != 200 ]; then
            blocked3+=$url
        fi
    } || {
		FailedItem+=$url
    }
done
echo "[Sport Betting Category] - ${#blocked3[@]} out of ${#Sportbetting[@]} sites were blocked"
FailedItem+="Sports-filter"
}

streaming-filter(){
streaming=(
"https://www.netflix.com"
"https://www.hulu.com"
"https://www.hotstar.com"
"https://www.directv.com"
"https://www.hbomax.com"
"https://www.peacocktv.com"
"https://www.discoveryplus.com"
"https://tv.youtube.com"
"https://www.sling.com"
"https://www.hulu.com"
"https://www.twitch.tv"
"https://vimeo.com"
"https://video.ibm.com")

blocked4=();
failedconn=();
for url in "${streaming[@]}" 
do
    {
        check=$(curl -s -A $user-agent -L -o /dev/null -w "%{http_code}" $url)
        if [ "$check" != 200 ]; then
            blocked4+=$url
			echo $url " blocked"
        fi
    } || {
		FailedItem+=$url
    }
done
echo "[Streaming Category] - ${#blocked4[@]} out of ${#streaming[@]} sites were blocked"
FailedItem+="streaming-filter"
}

socialmedia-filter(){
socialmedia=(
"https://www.facebook.com"
"https://www.instagram.com"
"https://web.whatsapp.com"
"https://www.tiktok.com"
"https://telegram.org"
"https://www.snapchat.com"
"https://www.pinterest.com"
"https://twitter.com"
"https://discord.com"
"https://www.tumblr.com"
"https://mastodon.social"
"https://www.wechat.com")

blocked5=();
for url in "${socialmedia[@]}" 
do
    {
        check=$(curl -s -A $user-agent -L -o /dev/null -w "%{http_code}" $url)
        if [ "$check" != 200 ]; then
            blocked5+=$url
			echo $url " blocked"
        fi
    } || {
		FailedItem+=$url
    }
done
echo "[Social Media Category] - ${#blocked5[@]} out of ${#socialmedia[@]} sites were blocked"
FailedItem+="socialmedia-filter"
#return , @$($FailedItem)
}

hacking-filter(){
hacking=(
"https://hackforums.net"
"https://www.exploit-db.com"
"https://cxsecurity.com"
"https://packetstormsecurity.com/files/tags/exploit/"
"https://www.shodan.io"
"https://vuldb.com"
"https://vulners.com"
"https://www.hackthebox.com"
"https://tryhackme.com"
"https://www.kali.org"
"https://pentest-tools.com"
"https://www.zone-h.org"
"https://0day.today"
"https://hackertarget.com"
"https://dnsdumpster.com")

blocked6=();
for url in "${hacking[@]}" 
do
    {
        check=$(curl -s -A $user-agent -L -o /dev/null -w "%{http_code}" $url)
        if [ "$check" != 200 ]; then
            blocked6+=$url
			echo $url " blocked"
        fi
    } || {
		FailedItem+=$url
    }
done
echo "[Hacking Category] - ${#blocked6[@]} out of ${#hacking[@]} sites were blocked"
FailedItem+="socialmedia-filter"
#return , @$($FailedItem)
}

code-filter(){
code=(
"https://github.com"
"https://about.gitlab.com"
"https://bitbucket.org"
"https://launchpad.net"
"https://beanstalkapp.com"
"https://riouxsvn.com"
"https://jfrog.com")

#$URLs = $code -split "n";
blocked7=();
for url in "${code[@]}" 
do
    {
        check=$(curl -s -A $user-agent -L -o /dev/null -w "%{http_code}" $url)
        if [ "$check" != 200 ]; then
            blocked7+=$url
			echo $url " blocked"
        fi
    } || {
		FailedItem+=$url
    }
done
echo "[Code Control Category] - ${#blocked7[@]} out of ${#code[@]} sites were blocked"
FailedItem+="socialmedia-filter"
#return , @$($FailedItem)
}

#User Import Choices
#===================
if [ "$#" -eq 1 ]; then
case $1 in

    -h) echo "Content Filtering Test. usage: contentfilter.sh [arguement]
 1. Adult Category
 2. Gambling
 3. Sport Betting
 4. Streaming
 5. Social Media
 6. Hacking
 7. Code Developement
 default is all";;
# Execute Functions
    1) Adult-filter;;
    2) Gambling-filter;;
    3) Sports-filter;;
    4) streaming-filter;;
    5) socialmedia-filter;;
    6) hacking-filter;;
    7) code-filter;;
    *) echo "Testing All Categories..."
		Adult-filter
		Gambling-filter
		Sports-filter
		streaming-filter
		socialmedia-filter
		hacking-filter
		code-filter;;
esac
else
	echo "Testing All Categories..."
	Adult-filter
	Gambling-filter
	Sports-filter
	streaming-filter
	socialmedia-filter
	hacking-filter
	code-filter
fi

#last line to include status error'ed hosts
#foreach ($site in $FailedItem){
#    Write-Host ("--- Failed to Connect to: $site")
#}
