$files = Get-ChildItem -File -Filter *.png  -Path retroarch\overlay\GameBezels\SuperGrafx\

for ($i=0; $i -lt $files.Count; $i++) {
    Write-Output $files[$i].FullName

    if ($files[$i].BaseName -eq '1941 - Counter Attack (Japan)') {
        magick $files[$i].FullName -strokewidth 0 -fill black -draw "rectangle 380,0 1541,1080" -region "1160x1080+380+0" -transparent black $files[$i].FullName
    }
    elseif ($files[$i].BaseName -eq 'Dai Makaimura (Japan)') {
        magick $files[$i].FullName -strokewidth 0 -fill black -draw "rectangle 363,0 1562,1080" -region "1200x1080+363+0" -transparent black $files[$i].FullName
    }
    else {
        magick $files[$i].FullName -strokewidth 0 -fill black -draw "rectangle 290,0 1630,1080" -region "1340x1080+290+0" -transparent black $files[$i].FullName
    }
}