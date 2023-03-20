using DANDI
using Test
using Downloads

@testset "DANDI.jl" begin
    path = first(mktemp())
    true_url = "https://dandiarchive.s3.amazonaws.com/blobs/43b/f3a/43bf3a81-4a0b-433f-b471-1f10303f9d35"
    @test_nowarn Downloads.download(true_url, path)
    url = @test_nowarn DANDI.dandiurl("000006", "sub-anm372795/sub-anm372795_ses-20170718.nwb"; version=nothing)
    @test string(url) == true_url
end
