dir d:\ -Recurse | Sort-Object -Descending length | select-object name,length -First 20
