module DANDI
using PyCall
using Conda

const dandi = PyNULL()
function __init__()
    Conda.add("dandi")
    copy!(dandi, pyimport_conda("dandi", "dandi"))
end

function download()

end


function browse()


end

function navigate_url(url)


end


end # module
