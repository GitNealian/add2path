if($args.count -gt 0) {
    ## path name with space
    $path = [String]::Join(" ", $args)
     
    $items = [environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine) + ";" + $path
    $items = $items.Split(";") | Where {$_ -ne ""} | Sort -Unique
    $items = [String]::Join(";", $items)
    [Environment]::SetEnvironmentVariable("Path", $items, [System.EnvironmentVariableTarget]::Machine)
}
