### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# ╔═╡ c33f1099-9572-4c3a-adfe-16f4885f0fbb
using LinearAlgebra

# ╔═╡ fd62d211-61b6-43a0-ac44-28bf9ef4c878
md"# Homework assignment no. 3
Due Date: 09/27 by 11:59 pm

Fill in your solutions in the Pluto notebook provided below. Once completed, execute the notebook and export it as a PDF. Upload the PDF to Gradescope for grading, and assign the pages to the respective exercises. Please ensure that all of your solutions, including the code you wrote, are visible and legible in the exported PDF before submitting it to Gradescope. Keep in mind that adjustments to assignments after the submission deadline will not be accommodated.

"

# ╔═╡ d0093083-d9b7-480b-a51d-81b25430091a
md"# Conceptual Problems"

# ╔═╡ 5dc80292-699f-11ef-3100-db3207e1eb49
md" #### Exercise 1:
Show that the nuclear norm is unitarily invariant, i.e., let $A\in\mathbb{C}^{m \times n}$, then

``
$
\Vert U A V\Vert_{\rm Tr}
=
\Vert  A \Vert_{\rm Tr}
$
``

for all unitary matrices $U \in\mathbb{C}^{m \times m}$ and $V\in\mathbb{C}^{n\times n}$.
"

# ╔═╡ 3b1c8895-642e-4139-a1f3-171fa4082907
md"#### Solution

"

# ╔═╡ 4ebb7aec-c919-4bbf-9133-caf815fb7d5f
md"#### Exercise 2:
Let $P\in\mathbb{C}^{m\times m}$ be a projector. Prove that 

(a) ${\rm null} (I - P) = {\rm range}(P)$ 

(b)  ${\rm null} (I - P) \cap {\rm null} (P) = \{0\}$
"

# ╔═╡ 9b03dca1-8613-4bf4-b5d3-03dff48934fe
md"#### Solution
(a)

(b)
"

# ╔═╡ 73a4751d-539b-4f22-a8e4-a491c55d5a1f
md" #### Exercise 3: 
Let $A\in \mathbb{K}^{m\times n}$ with $m \geq n$, show -- without using the SVD -- that $A^*A$ fulfills
``
$
A^* A=V \Lambda V^*=\sum_{i=1}^n \lambda_i v_i v_i^*,
$
``
where $\Lambda = {\rm diag}(\lambda_1, \lambda_2, ... ,\lambda_n)$
and $V^*V = I$.
"

# ╔═╡ eabe669c-3ca1-498f-a5f9-5ef44df93573
md"#### Solution

"

# ╔═╡ 9006fd37-2c87-4ee8-b982-683804a42cbe
md"#### Exercise 4:
Prove the Eckart–Young–Mirsky theorem for the nuclear norm:

Let $A\in \mathbb{C}^{m \times n}$ with $A = U\Sigma V^*$ its SVD and ${\rm rank}(A) = r$. We define for any $k\in [\![r]\!]$
``
$
A_k
=
\sum_{j=1}^k \sigma_j u_j v_j^*
=
U\Sigma_r V^*
$
``
with $[\Sigma_r]_{i,i} = \sigma_i$ if $i\leq k$ and zero else. 
Then
``
$
\Vert A - A_k \Vert_{\rm Tr}
=
\inf_{\substack{B \in \mathbb{C}^{m \times n } \\ {\rm rank}(B) \leq k}}
\Vert A - B \Vert_{\rm Tr}
=
\sum_{i=k+1}^{r}\sigma_{i}.
$
``
"

# ╔═╡ 76234812-6bf5-41cf-b2ae-161c4a364010
md"#### Solution

"

# ╔═╡ 6390d6ec-87e8-4d05-9d2a-bd2b61bf114a
md"# Programming Assignment"

# ╔═╡ 2a3d4e60-ee15-41f9-b4ab-053d75d46daf
md"In this programming exercise, you will implement different routines that compute the QR decomposition.
"

# ╔═╡ 0a405cf2-340e-47fb-917a-86aac5afe5eb
md" #### Exercise 1 (Classical Gram-Schmidt):
(a) Write a function my\_cgs that takes a matrix $A$ as an input and returns $Q$, $R$. Follow the pseudo-code for the classical Gram-Schmidt procedure given in class.
"

# ╔═╡ b095e0cb-a45c-4357-afc8-7fab9f647b48
function my_cgs(A)
	
    return Q, R
end

# ╔═╡ 6503bc75-718b-4fa0-9413-09827884e930
md" 
(b) Test your function using the following code
"

# ╔═╡ e9e6ffa0-c31b-49d2-b7ea-d574b7b93e6e
# ╠═╡ disabled = true
#=╠═╡
begin
	# Define five test cases
	test_cases = [
	    [1.0 1.0 0.0; 1.0 0.0 1.0; 0.0 1.0 1.0],
	    rand(4, 3),  # Random 4x3 matrix
	    [3 1; 1 3],  # Symmetric matrix
	    I(4),  # Identity matrix
	    [0 1 1; 1 0 1; 1 1 0]  # Symmetric but not diagonal matrix
	]
	
	for (i, M) in enumerate(test_cases)

		Qbm,Rbm = qr(M)
		myQ, myR = my_cgs(M)
	
		println("Test Case $i:")
		println("Accuracy of built-in QR: ", norm(Qbm*Rbm - M))
		println("Accuracy of my CGS     : ", norm(myQ*myR - M))
	    println()
	end
end
  ╠═╡ =#

# ╔═╡ 731399a0-772b-44bd-8f2e-69368a4351aa
md" #### Exercise 2 (Modified Gram Schmidt):
(a) Write a function my\_mgs that takes a matrix $A$ as an input and returns $Q$, $R$. Follow the pseudo-code for the modified Gram-Schmidt procedure given in class. 
"

# ╔═╡ 80eb7758-9816-4c35-97c9-55f28fef47f1
function my_mgs(A)
    
    return Q, R
end

# ╔═╡ 9bf3a82a-9f07-432e-bf36-36d56882431c
md" 
(b) Test your function using the following code
"

# ╔═╡ 130b4322-fc71-4e27-9d0b-d7f42eaf17bf
# ╠═╡ disabled = true
#=╠═╡
begin
	# Define five test cases
	test_cases = [
	    [1.0 1.0 0.0; 1.0 0.0 1.0; 0.0 1.0 1.0],
	    rand(4, 3),  # Random 4x3 matrix
	    [3.0 1.0; 1.0 3.0],  # Symmetric matrix
	    I(4),  # Identity matrix
	    [0. 1. 1.; 1. 0. 1.; 1. 1. 0.]  # Symmetric but not diagonal matrix
	]
	
	for (i, M) in enumerate(test_cases)

		Qbm,Rbm = qr(M)
		myQ, myR = my_cgs(M)
		mymQ, mymR = my_mgs(M)
	
		println("Test Case $i:")
		println("Accuracy of built-in QR: ", norm(Qbm*Rbm - M))
		println("Accuracy of my CGS     : ", norm(myQ*myR - M))
		println("Accuracy of my MGS     : ", norm(mymQ*mymR - M))
	    println()
	end
end
  ╠═╡ =#

# ╔═╡ 44432877-2153-4542-aa0e-e39f2120ecb0
md" #### Exercise 3 (Iterative Gram Schmidt):
(a) Write a function my\_igs that takes a matrix $A$ as an input and returns $Q$, $R$. Follow the pseudo-code for the iterative Gram-Schmidt procedure given in class. For the iterative orthogonalization process, enforce an accuracy of $1e$-$12$, and cap the number of iterations by $100$. 
"

# ╔═╡ 49785991-adde-4402-83e6-f813762602db
function my_igs(A, tol::Float64=1e-12, max_iters::Int=100)
   
    return Q, R
end

# ╔═╡ d3e04223-7d13-4bf1-9d3b-8b9d32e5a81f
md" 
(b) Test your function using the following code
"

# ╔═╡ 64a398ab-2b84-4da5-b503-8d8d2def2493
begin
	# Define five test cases
	test_cases = [
	    [1.0 1.0 0.0; 1.0 0.0 1.0; 0.0 1.0 1.0],
	    rand(4, 3),  # Random 4x3 matrix
	    [3.0 1.0; 1.0 3.0],  # Symmetric matrix
	    I(4),  # Identity matrix
	    [0. 1. 1.; 1. 0. 1.; 1. 1. 0.]  # Symmetric but not diagonal matrix
	]
	
	for (i, M) in enumerate(test_cases)

		Qbm,Rbm = qr(M)
		myQ, myR = my_cgs(M)
		mymQ, mymR = my_mgs(M)
		myiQ, myiR = my_igs(M)

		println()
		println("Test Case $i:")
		println("Accuracy of built-in QR: ", norm(Qbm*Rbm - M))
		println("Accuracy of my CGS     : ", norm(myQ*myR - M))
		println("Accuracy of my MGS     : ", norm(mymQ*mymR - M))
		println("Accuracy of my IGS     : ", norm(myiQ*myiR - M))
	    println()
	end
end

# ╔═╡ cfb7d36c-4f96-4160-8b76-760c35f26a04
md" #### Exercise 4
The Hilbert matrix $H \in \mathbb{R}^{n \times n}$, defined as 

``
$
H_{i,j} = \frac{1}{i + j - 1}
$
``
is commonly used to showcase the instability of Classical Gram-Schmidt orthogonalization. Its columns are nearly linearly dependent making the Hilbert matrix ill-conditioned. 

While Classical Gram-Schmidt can still provide an accurate reconstruction of the Hilbert matrix, it will fail to maintain the orthogonality of the $Q$ matrix as $n$ increases. Note that orthogonality is crucial because it ensures numerical stability in solving linear systems, least squares problems, and eigenvalue computations. Therefore, loss of orthogonality in $Q$ can result in large errors when $Q$ is used in such applications.
"

# ╔═╡ 927952a2-7f9b-4a17-836a-36b9e0194b6d
md" 
(a) Write a function hilbert\_matrix that takes a input an integer $n$ and returns the Hilbert matrix $H \in \mathbb{R}^{n \times n}$.
"

# ╔═╡ 9932114d-dbfd-42f7-970e-0d93c69c47b0
function hilbert_matrix(n::Int)

    return H
end

# ╔═╡ 5c5045c4-935e-4f6c-ac50-2667be55ce61
md" 
(b) Write a test that compares the orthogonality error of CGS, MGS and IGS for Hilbert matrices for $n=5$, $50$, $100$, $500$
"

# ╔═╡ 4adf2fe5-6258-461b-9fb9-77a20cd68c5c


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.4"
manifest_format = "2.0"
project_hash = "ac1187e548c6ab173ac57d4e72da1620216bce54"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.1.1+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+4"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"
"""

# ╔═╡ Cell order:
# ╟─fd62d211-61b6-43a0-ac44-28bf9ef4c878
# ╟─d0093083-d9b7-480b-a51d-81b25430091a
# ╟─5dc80292-699f-11ef-3100-db3207e1eb49
# ╟─3b1c8895-642e-4139-a1f3-171fa4082907
# ╟─4ebb7aec-c919-4bbf-9133-caf815fb7d5f
# ╟─9b03dca1-8613-4bf4-b5d3-03dff48934fe
# ╟─73a4751d-539b-4f22-a8e4-a491c55d5a1f
# ╟─eabe669c-3ca1-498f-a5f9-5ef44df93573
# ╟─9006fd37-2c87-4ee8-b982-683804a42cbe
# ╟─76234812-6bf5-41cf-b2ae-161c4a364010
# ╟─6390d6ec-87e8-4d05-9d2a-bd2b61bf114a
# ╟─2a3d4e60-ee15-41f9-b4ab-053d75d46daf
# ╠═c33f1099-9572-4c3a-adfe-16f4885f0fbb
# ╟─0a405cf2-340e-47fb-917a-86aac5afe5eb
# ╠═b095e0cb-a45c-4357-afc8-7fab9f647b48
# ╠═6503bc75-718b-4fa0-9413-09827884e930
# ╠═e9e6ffa0-c31b-49d2-b7ea-d574b7b93e6e
# ╟─731399a0-772b-44bd-8f2e-69368a4351aa
# ╠═80eb7758-9816-4c35-97c9-55f28fef47f1
# ╟─9bf3a82a-9f07-432e-bf36-36d56882431c
# ╠═130b4322-fc71-4e27-9d0b-d7f42eaf17bf
# ╟─44432877-2153-4542-aa0e-e39f2120ecb0
# ╠═49785991-adde-4402-83e6-f813762602db
# ╟─d3e04223-7d13-4bf1-9d3b-8b9d32e5a81f
# ╠═64a398ab-2b84-4da5-b503-8d8d2def2493
# ╟─cfb7d36c-4f96-4160-8b76-760c35f26a04
# ╟─927952a2-7f9b-4a17-836a-36b9e0194b6d
# ╠═9932114d-dbfd-42f7-970e-0d93c69c47b0
# ╟─5c5045c4-935e-4f6c-ac50-2667be55ce61
# ╠═4adf2fe5-6258-461b-9fb9-77a20cd68c5c
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
