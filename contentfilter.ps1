$FailedItem = @()

function Adult-filter{
$Adult = @"
https://www.xhamster.com
https://www.brazzers.com
https://www.hclips.com
https://www.shooshtime.com
https://www.chaturbate.com
https://www.donkparty.com
https://www.lustery.com
https://www.allpornstream.com
https://www.pornhub.com
https://www.pornstaraddict.com
https://www.xrateduniversity.com
https://www.youporn.com
https://www.voyeurhit.com
https://www.xnxx.com
https://www.hotmovs.com
https://www.tnaflix.com
https://www.xxxratedchicks.com
https://www.hdzog.com
https://www.redtube.com
https://www.xvideos.com
https://www.youjizz.com
https://www.thumbzilla.com
https://www.beeg.com
https://www.vjav.com
https://www.nuvid.com
https://www.upornia.com
https://www.manysex.com
https://www.sunporno.com
https://www.redgifs.com
"@


$URLs = $Adult -split "`n";
$blocked = @();
foreach ($url in $URLs) {
    try {
        $check = Invoke-WebRequest -Uri $url -UseBasicParsing | Select-Object -Expand StatusCode
        if($check -ne 200){
            $blocked += $url
        }
        
    }
    catch{
    $FailedItem += $url
    }
}
Write-Host "[Adult Category] - $($blocked.Length) out of $($URLs.Length) sites were blocked"
$FailedItem += "Adult-filter"
}

function Gambling-filter{
$Gambling = @"
https://www.ignitioncasino.eu
https://www.slots.lv
https://www.bovada.lv
https://www.cafecasino.lv
https://www.mybookie.ag
https://reddogcasino.com
https://www.bitstarz.com
https://csgoempire.com
https://www.superslots.ag
https://sports.everygame.eu
https://www.wildcasino.ag
https://lasatlantis.com
https://www.blackchippoker.eu
https://www.americascardroom.eu
https://www.jackpotcitycasino.com
https://www.royalvegascasino.com
https://www.888casino.com
https://www.rubyfortune.com
https://www.bigspincasino.com
https://www.juicystakes.eu
https://www.mfortune.co.uk
https://www.casino.com
https://www.casinorex.com
https://sports.ladbrokes.com
https://www.mrspin.co.uk
"@

$URLs = $Gambling -split "`n";
$blocked = @();
foreach ($url in $URLs) {
    try {
    $check = Invoke-WebRequest -Uri $url -UseBasicParsing | Select-Object -Expand StatusCode
        if($check -ne 200){
            $blocked += $url
        }     
    
    }
    catch{
    $FailedItem += $url
    }
}
Write-Host "[Gambling Category] - $($blocked.Length) out of $($URLs.Length) sites were blocked"
$FailedItem += "Gambling-filter"
}

function Sports-filter{
$Sportbetting = @"
https://www.draftkings.com
https://caesars.com/sportsbook-and-casino
https://www.fanduel.com
https://www.barstoolsportsbook.com
https://sports.va.betmgm.com/en/sports
https://nj.pointsbet.com
https://www.888sport.com
"@

$URLs = $Sportbetting -split "`n";
$blocked = @();
foreach ($url in $URLs) {
    try {
        $check = Invoke-WebRequest -Uri $url -UseBasicParsing | Select-Object -Expand StatusCode
        if($check -ne 200){
            $blocked += $url
        }
    }
    catch{
    $FailedItem += $url
    }
}
Write-Host "[Sport Betting Category] - $($blocked.Length) out of $($URLs.Length) sites were blocked"
$FailedItem += "Sports-filter"
}

function streaming-filter{
$streaming = @"
https://www.netflix.com
https://www.hulu.com
https://www.hotstar.com
https://www.directv.com
https://www.hbomax.com
https://www.peacocktv.com
https://www.discoveryplus.com
https://tv.youtube.com
https://www.sling.com
https://www.hulu.com
https://www.twitch.tv
https://vimeo.com
https://video.ibm.com
"@

$URLs = $streaming -split "`n";
$blocked = @();
$failedconn = @();
foreach ($url in $URLs) {
    try {
        $check = Invoke-WebRequest -Uri $url -UseBasicParsing | Select-Object -Expand StatusCode
        if($check -ne 200){
            $blocked += $url
        }
    }
    catch{
    $FailedItem += $url
    }
}
Write-Host "[Streaming Category] - $($blocked.Length) out of $($URLs.Length) sites were blocked"
$FailedItem += "streaming-filter"
#return , @$($FailedItem)
}

function socialmedia-filter{
$socialmedia = @"
https://www.facebook.com
https://www.instagram.com
https://web.whatsapp.com
https://www.tiktok.com
https://telegram.org
https://www.snapchat.com
https://www.pinterest.com
https://twitter.com
https://discord.com
https://www.tumblr.com
https://mastodon.social
https://www.wechat.com
"@

$URLs = $socialmedia -split "`n";
$blocked = @();
foreach ($url in $URLs) {
    try {
        $check = Invoke-WebRequest -Uri $url -UseBasicParsing | Select-Object -Expand StatusCode
        if($check -ne 200){
            $blocked += $url
        }
    }
    catch{
    $FailedItem += $url
    }
}
Write-Host "[Social Media Category] - $($blocked.Length) out of $($URLs.Length) sites were blocked"
$FailedItem += "socialmedia-filter"
#return , @$($FailedItem)
}

function hacking-filter{
$hacking = @"
https://hackforums.net
https://www.exploit-db.com
https://cxsecurity.com
https://packetstormsecurity.com/files/tags/exploit/
https://www.shodan.io
https://vuldb.com
https://vulners.com
https://www.hackthebox.com
https://tryhackme.com
https://www.kali.org
https://pentest-tools.com
https://www.zone-h.org
https://0day.today
https://hackertarget.com
https://dnsdumpster.com
"@

$URLs = $hacking -split "`n";
$blocked = @();
foreach ($url in $URLs) {
    try {
        $check = Invoke-WebRequest -Uri $url -UseBasicParsing | Select-Object -Expand StatusCode
        if($check -ne 200){
            $blocked += $url
        }
    }
    catch{
    $FailedItem += $url
    }
}
Write-Host "[Hacking Category] - $($blocked.Length) out of $($URLs.Length) sites were blocked"
$FailedItem += "socialmedia-filter"
#return , @$($FailedItem)
}

function code-filter{
$code = @"
https://github.com
https://about.gitlab.com
https://bitbucket.org
https://launchpad.net
https://beanstalkapp.com
https://riouxsvn.com
https://jfrog.com
"@

$URLs = $code -split "`n";
$blocked = @();
foreach ($url in $URLs) {
    try {
        $check = Invoke-WebRequest -Uri $url -UseBasicParsing | Select-Object -Expand StatusCode
        if($check -ne 200){
            $blocked += $url
        }
    }
    catch{
    $FailedItem += $url
    }
}
Write-Host "[Code Control Category] - $($blocked.Length) out of $($URLs.Length) sites were blocked"
$FailedItem += "socialmedia-filter"
#return , @$($FailedItem)
}

#User Import Choices
#===================
if ($args){
Switch ($args)
{
    -h {write-host "
Content Filtering Test. usage: contentfilter.ps1 [arguement]
 1. Adult Category
 2. Gambling
 3. Sport Betting
 4. Streaming
 5. Social Media
 6. Hacking
 7. Code Developement
 default is all   
    "}
# Execute Functions
    1 {Adult-filter}
    2 {Gambling-filter}
    3 {Sports-filter}
    4 {streaming-filter}
    5 {socialmedia-filter}
    6 {hacking-filter}
    7 {code-filter}
    default {
Write-Host "Default"
Adult-filter
Gambling-filter
Sports-filter
streaming-filter
socialmedia-filter
hacking-filter
code-filter    
    }
}
}else{
Write-Host "Failed Args"
Adult-filter
Gambling-filter
Sports-filter
streaming-filter
socialmedia-filter
hacking-filter
code-filter
}


#last line to include status error'ed hosts
#foreach ($site in $FailedItem){
#    Write-Host ("--- Failed to Connect to: $site")
#}