module Dandi
using PythonCall
using CondaPkg

# Try and export as much of the python dandi interface as possible
basemodules = [:pynwb, :dandi, :h5py]
modules = [:dandiapi, :dandiarchive, :delete, :download, :move, :organize, :upload, :validate, :files, :misctypes, :consts, :utils, :support]
# apiclasses = [
[Meta.parse("const $m = PythonCall.pynew()") for m in basemodules] .|> eval
[Meta.parse("const $m = PythonCall.pynew()") for m in modules] .|> eval

function __init__()
    [Meta.parse("PythonCall.pycopy!($m, pyimport(\"$m\"))") for m in basemodules] .|> eval
    [Meta.parse("PythonCall.pycopy!($m, pyimport(\"dandi.$m\"))") for m in modules] .|> eval
end



"""
    dandiurl(dandiset_id::String="000006", filepath::String="sub-anm372795/sub-anm372795_ses-20170718.nwb"; version::Union{Nothing, String}=nothing) -> String

Returns the S3 URL of a file in a Dandi dataset.

## Arguments
- `dandiset_id`: The ID of the Dandi dataset.
- `filepath`: The path of the file within the Dandi dataset.
- `version`: The version of the file. If nothing, the latest version is used.
"""
function dandiurl(dandiset_id="000006", filepath="sub-anm372795/sub-anm372795_ses-20170718.nwb"; version=nothing)
    client = dandiapi.DandiAPIClient()
    if isnothing(version)
        asset = client.get_dandiset(dandiset_id).get_asset_by_path(filepath)
    else
        asset = client.get_dandiset(dandiset_id).get_asset_by_path(filepath, version)
    end
    s3_url = asset.get_content_url(follow_redirects=1, strip_query=true)
    return s3_url
end



end
