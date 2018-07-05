__precompile__()

module DistributedArrays

importall Base
import Base.Callable
import Base.BLAS: axpy!

using Primes
using Primes: factor

# DArray exports
export DArray, SubDArray, SubOrDArray, @DArray
export dzeros, dones, dfill, drand, drandn, distribute, localpart, map_localparts, localindexes, ppeval

# non-array distributed data
export ddata, gather

# immediate release of localparts
export close, d_closeall

include("darray.jl")
include("core.jl")
include("serialize.jl")
include("mapreduce.jl")
include("linalg.jl")
include("sort.jl")

include("spmd.jl")
export SPMD

end # module
