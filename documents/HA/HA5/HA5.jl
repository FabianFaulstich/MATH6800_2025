### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# ╔═╡ e08ae4f5-4df5-459e-9f3b-3f11c8850b5a
using LinearAlgebra, Test

# ╔═╡ 83ea09b4-8431-11ef-22c8-9be8427aea98
md"# Homework assignment no. 5
Due Date: 10/11 by 11:59 pm

Fill in your solutions in the Pluto notebook provided below. Once completed, execute the notebook and export it as a PDF. Upload the PDF to Gradescope for grading, and assign the pages to the respective exercises. Please ensure that all of your solutions, including the code you wrote, are visible and legible in the exported PDF before submitting it to Gradescope. Keep in mind that adjustments to assignments after the submission deadline will not be accommodated.

"

# ╔═╡ 3fa0913e-b22c-4f2a-b5fe-dd9fa5d4e922
md"# Conceptual Problems"

# ╔═╡ dbef7b8d-2041-4c0a-9c1b-d26c3dcd227c
md" #### Exercise 1:
Let $A\in\mathbb{K}^{m\times n}$. Suppose $A$ has the form
``
$
\begin{bmatrix}
A_1\\A_2
\end{bmatrix}
$
``
where $A_1 \in\mathbb{K}^{n\times n}$ 
is a nonsingular matrix and 
$A_2\in\mathbb{K}^{(m-n)\times n}$ is an arbitrary matrix. 
Prove that
``
$
\Vert A^+ \Vert_2 \leq \Vert A_1^{-1} \Vert_2
$
``
"

# ╔═╡ bf348e75-a3ed-498b-9360-60ea1fde2d7e
md"#### Solution

"

# ╔═╡ cac0dfab-ad92-437d-ba0c-de5e76fa090d
md" #### Exercise 2:
Let $P \in \mathbb{K}^{m\times m}$ be a projector. Prove that 
``
$
{\rm range}(P) = {\rm null}(I - P) 
$
``
"

# ╔═╡ 8d27b6b5-a02d-4a93-b331-a7968d393e4a
md"#### Solution

"

# ╔═╡ f2cd2a69-a927-46c2-9e47-ad875edc0ef4
md" #### Exercise 3:
Let $x \in\mathbb{K}^m$. Prove that there exists a Householder transformation $P$ s.t.
``
$
P x = 
\begin{bmatrix}
\alpha\\ 0\\ \vdots \\ 0
\end{bmatrix}
$
``
where $\alpha = \Vert x \Vert$.
"

# ╔═╡ eb1ffd84-8a24-4769-abb8-9cadafdc84b6
md"#### Solution

"

# ╔═╡ a1816ff6-d9dd-4baa-9359-b8c12802a00e
md" #### Exercise 4:
Prove the following statements:
"

# ╔═╡ c136c628-68fa-4a85-a3bc-d731c4ea66b9
md" 
(a) Let $A\in\mathbb{K}^{m\times m}$ non-singular. Then 
``
$
\Vert A^{-1} \Vert_2 = \frac{1}{\sigma_m}
$
``
"

# ╔═╡ 725b8378-3e69-43ae-bcb9-8aa944201b30
md"#### Solution

"

# ╔═╡ e234c2e5-18ee-4694-be2d-9c2ae8b29a89
md"
(b) Let $A\in\mathbb{K}^{m\times n}$ with $n < m$ and of full rank. Then
``
$
\Vert A^{+} \Vert_2 = \frac{1}{\sigma_n}
$
``
"

# ╔═╡ a861ddc0-a156-4085-affa-8e29586ace2e
md"#### Solution

"

# ╔═╡ 9e6ba036-62ba-488d-9492-c0b03219c08d
md"# Programming Assignment"

# ╔═╡ 67453f36-fdc6-46cc-b73b-8d19b615c798
md" #### Exercise 5 (Householder QR):
Write a function householder\_qr that takes a matrix $A$ as an input and returns $R$, and the corresponding Householder vectors. Follow the pseudo-code given in class.
"

# ╔═╡ debb2be9-0c49-4b89-8c51-043dc80fb169
function householder_qr(A::Matrix)
    return R, householder_vectors
end

# ╔═╡ fef69fea-aeff-4e65-a54b-a72e29feb907
md" 
Write a function reconstruct_Q that takes the Householder vectors as input and returns Q.
"

# ╔═╡ f6a22a6c-3910-4f1c-aa0a-dfd7834e6bf3
function reconstruct_Q(vecs)
    return Q
end

# ╔═╡ 66289c16-f32e-408d-948a-ffe4ed1e822c
md" 
Verify your code with the following tests:
"


# ╔═╡ f182f480-5095-4576-b4f6-d341b0c68961
@testset "Householder QR Decomposition Tests" begin
    A1 = [4.0 2.0;
          6.0 1.0;
          8.0 0.0]

    R1, HV1 = householder_qr(A1)
    @test isapprox(R1, triu(R1), atol=1e-8)

    Q1 = reconstruct_Q(HV1)
    Ar1 = Q1 * R1
    @test isapprox(A1, Ar1, atol=1e-8)

	
    A2 = [1.0 2.0 3.0;
          4.0 5.0 6.0]
    
    R2, HV2 = householder_qr(A2)
    
    @test isapprox(R2, triu(R2), atol=1e-8)
    
    Q2 = reconstruct_Q(HV2)
    Ar2 = Q2 * R2
    @test isapprox(A2, Ar2, atol=1e-8)
    
    @test size(R1) == size(A1)
    @test size(R2) == size(A2)

	A3 = [1.0 2.0 3.0;
          4.0 5.0 6.0;
          7.0 8.0 9.0]

	R3, HV3 = householder_qr(A3)
	@test isapprox(R3, triu(R3), atol=1e-8)

	Q3 = reconstruct_Q(HV3)
	Ar3 = Q3 * R3
	@test isapprox(A3, Ar3, atol=1e-8)

	@test size(R3) == size(A3)

	A4 = randn(5, 5)  

	R4, HV4 = householder_qr(A4)
	@test isapprox(R4, triu(R4), atol=1e-8)

	Q4 = reconstruct_Q(HV4)
	Ar4 = Q4 * R4
	@test isapprox(A4, Ar4, atol=1e-8)

	@test size(R4) == size(A4)

	A6 = [5.0]  
	R6, HV6 = householder_qr(reshape(A6, 1, 1))

	@test isapprox(R6, A6, atol=1e-8)
	@test length(HV6) == 0
	Q6 = reconstruct_Q(HV6)

	Ar6 = Q6 * R6
	@test isapprox(A6, Ar6, atol=1e-8)

	A7 = [3.0 4.0 5.0]  
	R7, HV7 = householder_qr(A7)
	Q7 = reconstruct_Q(HV7)
	Ar7 = Q7 * R7

	@test isapprox(A7, Ar7, atol=1e-8)
		
end

# ╔═╡ 746c006d-2171-4885-a4fb-e2d890f0f43f
md" #### Exercise 6 (Backward substitution):
Write a function backward_substitution that takes a matrix U (upper triangular) and a vector b as input that returns the solution obtained via backward substitution. 
"

# ╔═╡ e2208478-6a8b-430e-8b0a-5ba460e4babb
function backward_substitution(U::Matrix, b::Vector)
    return x
end

# ╔═╡ 13fdd6dd-294e-4dec-9e2b-fd19be087d62
md"
Verify your code using the following tests:
"

# ╔═╡ b662da28-20b1-4508-b305-526dbb11a0e3
@testset "Additional Backward Substitution Tests" begin
    U5 = [1.0 2.0 3.0 4.0 5.0;
          0.0 6.0 7.0 8.0 9.0;
          0.0 0.0 10.0 11.0 12.0;
          0.0 0.0 0.0 13.0 14.0;
          0.0 0.0 0.0 0.0 15.0]
    b5 = [15.0, 34.0, 56.0, 70.0, 75.0]

    x5 = backward_substitution(U5, b5)
    @test isapprox(U5 * x5, b5, atol=1e-8)

    U6 = [1.0 1.0 1.0;
          0.0 1e-10 1.0;
          0.0 0.0 1.0]
    b6 = [3.0, 1e-10 + 2.0, 3.0]

    x6 = backward_substitution(U6, b6)
    @test isapprox(U6 * x6, b6, atol=1e-8)

    U7 = [-2.0 3.0 -4.0;
          0.0 -5.0 6.0;
          0.0 0.0 -7.0]
    b7 = [-10.0, -20.0, -30.0]

    x7 = backward_substitution(U7, b7)
    @test isapprox(U7 * x7, b7, atol=1e-8)

    U9 = [1e-5 2e-5;
          0.0 1e-5]
    b9 = [3e-5, 2e-5]

    x9 = backward_substitution(U9, b9)
    @test isapprox(U9 * x9, b9, atol=1e-10)

    U10 = [3.0 4.0 5.0;
           0.0 6.0 7.0;
           0.0 0.0 8.0]
    b10 = [20.0, 19.0, 24.0]

    x10 = backward_substitution(U10, b10)
    @test isapprox(U10 * x10, b10, atol=1e-8)
end

# ╔═╡ de30f96e-d0db-4c1e-9d85-7fbb799602f4
md" #### Exercise 7 (Householder QR -- storage improved):
Write a function householder\_qr\_opt that is storage improved, i.e., you are supposed to perform all computations in place. You may only define additional variables of the types integer and one additional vector.
"

# ╔═╡ 3038c905-af9c-43bb-bbc9-e5354bc535e5
function householder_qr_opt(A::Matrix)
    return A, v
end

# ╔═╡ 39ce2560-d790-4eea-9559-e36fcc8cc672
md"
Write a function that computes
``
$
y = Q' b
$
``
provided the output from householder\_qr\_opt. Again perform this computation in place. Again, perform all computations in place, no additional variables are to be defined. 
"

# ╔═╡ ee7ce412-244d-4c6a-ae74-47f8f4747d33
function apply_Q_opt(A::Matrix, b::Vector)
    return b
end

# ╔═╡ bc6209b7-5ffc-433e-a99c-471101075d7e
md"
Write a linear solver that only uses the above routines householder\_qr\_opt, apply\_Q\_opt, and backward_substitution.
"

# ╔═╡ 1ad3019e-1b09-45be-bcee-828f52a09793
function solve_LS(A::Matrix, b::Vector)
	return sol
end

# ╔═╡ 505ffc91-f123-45fc-98be-18056f4da4a5
md"
Verify your code using the following tests:
"

# ╔═╡ 4fc64ccd-8dbe-47d6-9477-a9a8b40ff5e4
@testset "Linear System Solve Test" begin
	
	# Test 2: 3x3 linear system
    A3 = [1.0 2.0 3.0;
          4.0 5.0 6.0;
          7.0 8.0 10.0]

    x3 = [1.0, 2.0, 3.0]
    b3 = A3 * x3

    # Call the solve_LS function
    x3_app = solve_LS(A3, b3)

    # Check if the solution is correct by verifying x3 ≈ x3_app
    @test isapprox(x3, x3_app, atol=1e-8)

    println("3x3 test passed: Solution x3 is correct.")

    # Example matrix A and vector b
    A = [2.0 1.0;
         1.0 3.0]
	
    x = [3.0, 4.0]
	b = A * x

    # Call the solve_LS function
    x_app = solve_LS(A, b)

    # Check if the solution is correct by verifying A * x ≈ b
    @test isapprox(x, x_app, atol=1e-8)

    println("Test passed: Solution x is correct.")

end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
Test = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.4"
manifest_format = "2.0"
project_hash = "70c6548fc0267b7c924ca6e56c4af9fd2abca604"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.1.1+0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+4"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"
"""

# ╔═╡ Cell order:
# ╟─83ea09b4-8431-11ef-22c8-9be8427aea98
# ╟─3fa0913e-b22c-4f2a-b5fe-dd9fa5d4e922
# ╟─dbef7b8d-2041-4c0a-9c1b-d26c3dcd227c
# ╠═bf348e75-a3ed-498b-9360-60ea1fde2d7e
# ╟─cac0dfab-ad92-437d-ba0c-de5e76fa090d
# ╠═8d27b6b5-a02d-4a93-b331-a7968d393e4a
# ╟─f2cd2a69-a927-46c2-9e47-ad875edc0ef4
# ╠═eb1ffd84-8a24-4769-abb8-9cadafdc84b6
# ╟─a1816ff6-d9dd-4baa-9359-b8c12802a00e
# ╟─c136c628-68fa-4a85-a3bc-d731c4ea66b9
# ╠═725b8378-3e69-43ae-bcb9-8aa944201b30
# ╟─e234c2e5-18ee-4694-be2d-9c2ae8b29a89
# ╠═a861ddc0-a156-4085-affa-8e29586ace2e
# ╟─9e6ba036-62ba-488d-9492-c0b03219c08d
# ╠═e08ae4f5-4df5-459e-9f3b-3f11c8850b5a
# ╟─67453f36-fdc6-46cc-b73b-8d19b615c798
# ╠═debb2be9-0c49-4b89-8c51-043dc80fb169
# ╟─fef69fea-aeff-4e65-a54b-a72e29feb907
# ╠═f6a22a6c-3910-4f1c-aa0a-dfd7834e6bf3
# ╟─66289c16-f32e-408d-948a-ffe4ed1e822c
# ╠═f182f480-5095-4576-b4f6-d341b0c68961
# ╟─746c006d-2171-4885-a4fb-e2d890f0f43f
# ╠═e2208478-6a8b-430e-8b0a-5ba460e4babb
# ╟─13fdd6dd-294e-4dec-9e2b-fd19be087d62
# ╠═b662da28-20b1-4508-b305-526dbb11a0e3
# ╟─de30f96e-d0db-4c1e-9d85-7fbb799602f4
# ╠═3038c905-af9c-43bb-bbc9-e5354bc535e5
# ╟─39ce2560-d790-4eea-9559-e36fcc8cc672
# ╠═ee7ce412-244d-4c6a-ae74-47f8f4747d33
# ╟─bc6209b7-5ffc-433e-a99c-471101075d7e
# ╠═1ad3019e-1b09-45be-bcee-828f52a09793
# ╟─505ffc91-f123-45fc-98be-18056f4da4a5
# ╠═4fc64ccd-8dbe-47d6-9477-a9a8b40ff5e4
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
