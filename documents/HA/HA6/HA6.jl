### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# ╔═╡ e08ae4f5-4df5-459e-9f3b-3f11c8850b5a
using LinearAlgebra, Test

# ╔═╡ 83ea09b4-8431-11ef-22c8-9be8427aea98
md"# Homework assignment no. 6
Due Date: 11/08 by 11:59 pm

Fill in your solutions in the Pluto notebook provided below. Once completed, execute the notebook and export it as a PDF. Upload the PDF to Gradescope for grading, and assign the pages to the respective exercises. Please ensure that all of your solutions, including the code you wrote, are visible and legible in the exported PDF before submitting it to Gradescope. Keep in mind that adjustments to assignments after the submission deadline will not be accommodated.

"

# ╔═╡ 3fa0913e-b22c-4f2a-b5fe-dd9fa5d4e922
md"# Conceptual Problems"

# ╔═╡ dbef7b8d-2041-4c0a-9c1b-d26c3dcd227c
md" #### Exercise 1:
Prove the following statement:

Let $A\in\mathbb{H}_{m}(\mathbb{R})$ with $0\preccurlyeq A$. The largest element in absolute values lies on the diagonal, i.e.,

``
$
|a_{i,j}| \leq \max_{i \in [\![m]\!]} a_{i,i}
$
``

"

# ╔═╡ 8d27b6b5-a02d-4a93-b331-a7968d393e4a
md"#### Solution

"

# ╔═╡ 02c91502-bd38-4427-8297-df68d7236765
md" #### Exercise 2:
Let $A\in\mathbb{K}^{m\times n}$. Prove that 
``
$
\kappa(A^* A) = \kappa(A)^2
$
``
"

# ╔═╡ fe6458d1-82e8-4476-a97b-67950ae28302
md"#### Solution

"

# ╔═╡ f2cd2a69-a927-46c2-9e47-ad875edc0ef4
md" #### Exercise 3:
Consider IEEE 754 single precision format, i.e., 32 bits consisting of a one-bit sign, an 8-bit exponent, and a 23-bit mantissa. 


(a) What is the range for the exponent with 8 bits (starting from zero)?

Similar to the double precision in class we introduce a bias of $-127$, and reserve the all zeros and all ones exponents for special numbers.


(b) Taking the above into account, what is the range for the exponent with 8 bits? 

(c) What is the smallest positive number we can represent in this format?

(d) What is the largest positive number we can represent in this format?

(e) What is the machine epsilon in this format?

Provide a clear explanation for every point! 
"

# ╔═╡ eb1ffd84-8a24-4769-abb8-9cadafdc84b6
md"#### Solution

"

# ╔═╡ a1816ff6-d9dd-4baa-9359-b8c12802a00e
md" #### Exercise 4:
Show that 
``
$
\lim_{\delta \to 0} \sup_{\Vert \delta x\Vert \leq \delta}
\frac{\Vert Df(x) \delta x+\mathcal{O}(\Vert \delta x ^2\Vert) \Vert}{\Vert \delta x \Vert}=\Vert Df(x) \Vert
$
``

"

# ╔═╡ 725b8378-3e69-43ae-bcb9-8aa944201b30
md"#### Solution

"

# ╔═╡ 9e6ba036-62ba-488d-9492-c0b03219c08d
md"# Programming Assignment"

# ╔═╡ 67453f36-fdc6-46cc-b73b-8d19b615c798
md" #### Exercise 5 (Pivoted Cholesky):
Write a function pivoted_cholesky. 
Follow the pseudo-code given in class.
"

# ╔═╡ ee2ab766-00d4-4021-920c-694f5c7d9ffc


# ╔═╡ 001fb006-ab09-4546-b77c-775775341121
md" #### Exercise 6 (verification pivoted Cholesky):
Write five different tests that verify your code. For each test, provide a short, written verification, why you are choosing this test. 

Note that good code verification is a key learning outcome of this course. Therefore, having more than one trivial test is not sufficient.  
"

# ╔═╡ 82b7d9b3-c5d3-40d2-acfe-316f8f09b671
md"#### Test 1:

"

# ╔═╡ a1d5c78b-f497-452b-acb6-124d82946d67


# ╔═╡ 1943296b-d83f-410c-a944-420c74a98712
md"#### Test 2:

"

# ╔═╡ dc52db34-8d35-4804-86c8-709b3704542e


# ╔═╡ 2238a273-049a-4de6-b58d-e9a91baafef5
md"#### Test 3:

"

# ╔═╡ 89026388-a5c6-4016-82c2-76c348251d2a


# ╔═╡ 9bcab170-a9ec-467c-b27c-8d15bca64bda
md"#### Test 4:

"

# ╔═╡ 17494056-0a54-4a9e-84ba-86a16df2a4d1


# ╔═╡ 0c691a79-f5ee-4794-a264-7c6380b11fb6
md"#### Test 5:

"

# ╔═╡ f27b283b-9426-4c8f-a6bf-ac64993af4e5
md" #### Exercise 7 (optimality of pivoted Cholesky):
Use your code to numerically investigate the optimality results of the pivoted Cholesky-based low-rank approximation provided in:

https://www.sciencedirect.com/science/article/pii/S0168927411001814

Clearly elaborate your comparison strategy, and why this is a good strategy!

Note: A good starting point is the comparison with the element of best approximation provided by EYM theorem.  
"

# ╔═╡ 836b2086-cc2b-4062-b5d4-e9d3010a41a6


# ╔═╡ 9a742226-eeff-4f70-ae18-777adb659157
md" #### Exercise 7 (Exponential convergence rates of pivoted Cholesky):
Use your code to numerically investigate the exponential convergence rates shown by Habrecht, Peters, and Schneider in

https://www.sciencedirect.com/science/article/pii/S0168927411001814

Note that the eigenvalues of the considered matrices exhibit a sufficiently fast exponential decay. 
"

# ╔═╡ b5eaae01-8ca0-4757-8f56-97f8e2feea09


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
# ╠═8d27b6b5-a02d-4a93-b331-a7968d393e4a
# ╟─02c91502-bd38-4427-8297-df68d7236765
# ╠═fe6458d1-82e8-4476-a97b-67950ae28302
# ╟─f2cd2a69-a927-46c2-9e47-ad875edc0ef4
# ╠═eb1ffd84-8a24-4769-abb8-9cadafdc84b6
# ╟─a1816ff6-d9dd-4baa-9359-b8c12802a00e
# ╠═725b8378-3e69-43ae-bcb9-8aa944201b30
# ╟─9e6ba036-62ba-488d-9492-c0b03219c08d
# ╠═e08ae4f5-4df5-459e-9f3b-3f11c8850b5a
# ╠═67453f36-fdc6-46cc-b73b-8d19b615c798
# ╠═ee2ab766-00d4-4021-920c-694f5c7d9ffc
# ╠═001fb006-ab09-4546-b77c-775775341121
# ╠═82b7d9b3-c5d3-40d2-acfe-316f8f09b671
# ╠═a1d5c78b-f497-452b-acb6-124d82946d67
# ╠═1943296b-d83f-410c-a944-420c74a98712
# ╠═dc52db34-8d35-4804-86c8-709b3704542e
# ╠═2238a273-049a-4de6-b58d-e9a91baafef5
# ╠═89026388-a5c6-4016-82c2-76c348251d2a
# ╠═9bcab170-a9ec-467c-b27c-8d15bca64bda
# ╠═17494056-0a54-4a9e-84ba-86a16df2a4d1
# ╠═0c691a79-f5ee-4794-a264-7c6380b11fb6
# ╟─f27b283b-9426-4c8f-a6bf-ac64993af4e5
# ╠═836b2086-cc2b-4062-b5d4-e9d3010a41a6
# ╠═9a742226-eeff-4f70-ae18-777adb659157
# ╠═b5eaae01-8ca0-4757-8f56-97f8e2feea09
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
