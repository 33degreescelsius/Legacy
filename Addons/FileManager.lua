local FileManager = {}

function FileManager:CreateFolder(Path)
    if not isfolder(Path) then
        makefolder(Path)
    end
end

function FileManager:CreateFile(Path, Contents)
    if not isfile(Path) then
        writefile(Path, Contents)
    end
end

function FileManager:DeleteFolder(Path)
    if isfolder(Path) then
        delfolder(Path)
    end
end

function FileManager:DeleteFile(Path)
    if isfile(Path) then
        delfile(Path)
    end
end

function FileManager:AppendFile(Path, Contents)
    if isfile(Path) then
        appendfile(Path, Contents)
    end
end

function FileManager:ReadFile(Path)
    if isfile(Path) then
        return readfile(Path)
    end
end

function FileManager:ListFiles(Path)
    if isfolder(Path) then
        return listfiles(Path)
    end
end

function FileManager:LoadFile(Path)
    if isfile(Path) then
        return loadfile(Path)
    end
end

return FileManager