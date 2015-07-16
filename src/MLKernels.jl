#===================================================================================================
  Kernel Functions Module
===================================================================================================#

module MLKernels

import Base: show, eltype, convert

export
    # Functions
    ismercer,
    isnegdef,
    #kernel,
    kernelmatrix,
    #center_kernelmatrix!,
    #center_kernelmatrix,
    #nystrom,

    # Kernel Types
    Kernel,
        StandardKernel,
            BaseKernel,
                AdditiveKernel,
                    SquaredDistanceKernel,
                    SineSquaredKernel,
                    ChiSquaredKernel,
                    SeparableKernel,
                        ScalarProductKernel,
                        MercerSigmoidKernel,
                ARD,
            CompositeKernel,
                ExponentialKernel,
                RationalQuadraticKernel,
                MaternKernel,
                ExponentiatedKernel,
                PolynomiaKernel,
                LogKernel,
                PowerKernel,
        CombinationKernel,
            KernelProduct,
            KernelSum,
        # Kernel Constructors
        GaussianKernel,
        RadialBasisKernel,
        LaplacianKernel,
        LinearKernel

import Base: show, eltype, convert

include("common.jl")
include("meta.jl")
include("kernels.jl")
include("pairwise.jl")
include("kernelfunctions.jl")

end # MLKernels
