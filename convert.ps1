$oldvids = Get-ChildItem -Filter "*.opus" -Recurse
foreach ($oldvid in $oldvids) {
    $newvid = [io.path]::ChangeExtension($oldvid, '.mp3')
    ffmpeg -i $oldvid -acodec libmp3lame $newvid
}

rm *.opus