### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# ╔═╡ 6181e0e7-79dc-4027-9ea6-f8f471497b43
using LinearAlgebra, Test

# ╔═╡ 12916d06-9855-11ef-21da-579e7ca1ba2c
md"# Homework assignment no. 7
Due Date: 11/22 by 11:59 pm

Fill in your solutions in the Pluto notebook provided below. Once completed, execute the notebook and export it as a PDF. Upload the PDF to Gradescope for grading, and assign the pages to the respective exercises. Please ensure that all of your solutions, including the code you wrote, are visible and legible in the exported PDF before submitting it to Gradescope. Keep in mind that adjustments to assignments after the submission deadline will not be accommodated.

"

# ╔═╡ 71d07399-49ef-41ce-b2bd-6f37af86344f
md"# Conceptual Problems"

# ╔═╡ e18bfb4f-46b6-4b76-866d-3f191b874560
md" #### Exercise 1:
Prove the following statement:

Suppose $|\lambda_1| > |\lambda_2| \geq |\lambda_3| \geq ... \geq |\lambda_m|>0$ and $q_1^\top v^{(0)} \neq 0$. Then 
``
$
\Vert v^{(k)} - (\pm) q_1\Vert \in \mathcal{O}\left(\bigg|\frac{\lambda_2}{\lambda_1}\bigg|^k\right)
\quad {\rm and} \quad |\lambda^{(k)} - \lambda_1|\in \mathcal{O}
\left(\bigg|\frac{\lambda_2}{\lambda_1}\bigg|^{2k}\right)
$
``
"

# ╔═╡ 78b9d558-f0a4-4201-9693-84e26c915e8a


# ╔═╡ 67c56b2e-363d-4209-adc0-50051cf3e636
md" #### Exercise 2:
Consider the matrix 
``
$
A
= 
\begin{pmatrix}
a & d\\ d & b
\end{pmatrix}.
$
``
Show that the Jacobi rotation
``
$
A
= 
\begin{pmatrix}
c & s\\ -s & c
\end{pmatrix}
$
``
where $c = \cos(\Theta)$ and $s = \sin(\Theta)$ with 
``
$
\tan( 2\Theta) = \frac{2d}{b-a}
$
``
orthogonally diagonalizes the matrix $A$.
"

# ╔═╡ 5204e899-53f9-4833-8e55-e73ec45abdb2


# ╔═╡ f2ed982f-5903-4485-8a4f-42ef87cb9496
md" #### Exercise 3:
Consider the matrix
``
$
A =
\begin{pmatrix} 1 & -1 & 0 & 0\\-1 & 2 & -1 & 0\\0 & -1 & 3 & -1\\0 & 0 & -1 & 4\end{pmatrix}
$
``
Use the Sturm sequence argument to show that $A$ has exactly two eigenvalues in $[2,5)$.
"

# ╔═╡ b6f940ee-b726-4cde-9c9a-80b9924a3daa


# ╔═╡ 6a616acb-5551-4342-9473-be863de9005b
md" #### Exercise 4:
Consider the matrix
``
$
H = \begin{bmatrix}a_1 & b_1 & &0 \\b_1 & a_2 & \ddots \\& \ddots& \ddots& b_{m-1}\\ 0  &&b_{m-1} & a_m \end{bmatrix}
$
``
In this case, we moreover find that 
``
$
p^{(k)}(x)
=
{\rm det}(A^{(k)} - xI_k) 
=
(a_k - x)p^{(k-1)}(x) - b_{k-1}^2p^{(k-2)}(x)
$
``
with $p^{(-1)}(x) = 0 $ and $p^{(0)}(x) = 1$ for $k\in[\![m]\!]$.
"

# ╔═╡ 9427fa72-92ba-474a-a2d3-193e0039155a


# ╔═╡ bc3ff095-455d-4bf7-94ac-a9d522c43823
md"# Programming Assignment"

# ╔═╡ 1ff01069-028a-4946-ac00-e404c11cb506
md" #### Exercise 5 (Upper Hessenberg form):
Write a function upper_hess that computes the upper Hessenberg form provided a square matrix. 
"

# ╔═╡ d3fa9e05-d9ee-4e4b-a6f4-325323480c39


# ╔═╡ f1292caf-d3ff-42ae-a91b-103e5b1afd1f
md" #### Exercise 6 (Power method):
Write a function power_method that performs the power method introduced in class. 
"

# ╔═╡ 0ec75ab4-eb97-4ccb-840a-76e103eff191


# ╔═╡ 272f959e-d43d-4d2f-b536-a0b71db8b694
md" #### Exercise 7 (Verification Power method):
Write three different tests that verify your code. For each test, provide a short, written verification, why you are choosing this test. 

Note that good code verification is a key learning outcome of this course. Therefore, having more than one trivial test is not sufficient.  
"

# ╔═╡ fa1a9ff5-a416-4b16-87c7-ff0fe30eaa8b
md"#### Test 1:

"

# ╔═╡ e8096114-35eb-435d-9c4e-1bf7cac5cb0a
md"#### Test 2:

"

# ╔═╡ 10ff2d6b-1e5f-4a6a-93fd-51a6db8aba4f
md"#### Test 3:

"

# ╔═╡ 9dafe797-5b71-40b0-9d0d-db5683db52f6
md" #### Exercise 8 (Inverse power method):
Write a function inv_PowerMethod that performs the inverse power method introduced in class. 
"

# ╔═╡ 4a3b85a9-f61c-4972-8e0a-deaf7779dbcf


# ╔═╡ 29cb2c1d-4885-49cf-9d4b-e70c84e5b5c8
md" #### Exercise 9 (Verification inverse power method):
Write three different tests that verify your code. For each test, provide a short, written verification, why you are choosing this test. 

Note that good code verification is a key learning outcome of this course. Therefore, having more than one trivial test is not sufficient.  
"

# ╔═╡ 4d289a03-bdfb-4d47-b912-3f4a51f73c7d
md"#### Test 1:

"

# ╔═╡ a4aa0980-aec1-4b38-858e-5e00211fdf38
md"#### Test 2:

"

# ╔═╡ 69f23083-111e-410b-95c8-1b01d8ca96e1
md"#### Test 3:

"

# ╔═╡ b38b0a63-78dd-46cc-bc42-4834808135a6
md" #### Exercise 10 (Rayleigh quotient iteration):
Write a function RQ_iter that performs the Rayleigh quotient iteration introduced in class. 
"

# ╔═╡ 976a8082-e338-43f8-96b5-a39f47d639be


# ╔═╡ da2a8d54-f8ac-4978-ac7e-0048fac271ed
md" #### Exercise 11 (Verification Rayleigh quotient iteration):
Write three different tests that verify your code. For each test, provide a short, written verification, why you are choosing this test. 

Note that good code verification is a key learning outcome of this course. Therefore, having more than one trivial test is not sufficient.  
"

# ╔═╡ 037e505e-6170-40d2-bab1-10507c449380
md"#### Test 1:

"

# ╔═╡ 17d3d977-8fdd-4172-9f4d-8a43fedd708d
md"#### Test 2:

"

# ╔═╡ 8742cd5c-7f1e-4fd2-be67-4b4c53544ae9
md"#### Test 3:

"

# ╔═╡ d2a307e0-6f7a-4b6b-aed9-0d653bb16a10
md" #### Exercise 12 (Practical QR-algorithm):
Write a function QR_alg that performs the practical QR-algorithm introduced in class. 
"

# ╔═╡ ea4236d5-3a76-46b6-a97e-f86126f491ea


# ╔═╡ 167a4138-f650-483c-84a7-01876e7c1470
md" #### Exercise 13 (Verification Practical QR-algorithm):
Write three different tests that verify your code. For each test, provide a short, written verification, why you are choosing this test. 

Note that good code verification is a key learning outcome of this course. Therefore, having more than one trivial test is not sufficient.  
"

# ╔═╡ 797c216c-8d3e-4aa4-b509-701e0fdf4cfe
md"#### Test 1:

"

# ╔═╡ 67b8dcf2-3ea6-4e38-a295-f88851bffc6b
md"#### Test 1:

"

# ╔═╡ 05fd3850-aa3f-4d35-8c83-5edbf83734be
md"#### Test 3:

"

# ╔═╡ 6fc9c819-79f2-49cf-a6ba-9945769abd74
md" #### Exercise 14:
Investigate the wall time of the practical QR-algorithm on a class of dense matrices (for example Hankel matrices of varying sizes). Redo your wall time investigations but this time bring the matrices into upper Hessenberg form first. 
"

# ╔═╡ e41198f2-149a-473c-afa7-0c68345565df


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
# ╟─12916d06-9855-11ef-21da-579e7ca1ba2c
# ╟─71d07399-49ef-41ce-b2bd-6f37af86344f
# ╟─e18bfb4f-46b6-4b76-866d-3f191b874560
# ╠═78b9d558-f0a4-4201-9693-84e26c915e8a
# ╟─67c56b2e-363d-4209-adc0-50051cf3e636
# ╠═5204e899-53f9-4833-8e55-e73ec45abdb2
# ╟─f2ed982f-5903-4485-8a4f-42ef87cb9496
# ╠═b6f940ee-b726-4cde-9c9a-80b9924a3daa
# ╟─6a616acb-5551-4342-9473-be863de9005b
# ╠═9427fa72-92ba-474a-a2d3-193e0039155a
# ╟─bc3ff095-455d-4bf7-94ac-a9d522c43823
# ╠═6181e0e7-79dc-4027-9ea6-f8f471497b43
# ╟─1ff01069-028a-4946-ac00-e404c11cb506
# ╠═d3fa9e05-d9ee-4e4b-a6f4-325323480c39
# ╟─f1292caf-d3ff-42ae-a91b-103e5b1afd1f
# ╠═0ec75ab4-eb97-4ccb-840a-76e103eff191
# ╟─272f959e-d43d-4d2f-b536-a0b71db8b694
# ╠═fa1a9ff5-a416-4b16-87c7-ff0fe30eaa8b
# ╠═e8096114-35eb-435d-9c4e-1bf7cac5cb0a
# ╠═10ff2d6b-1e5f-4a6a-93fd-51a6db8aba4f
# ╟─9dafe797-5b71-40b0-9d0d-db5683db52f6
# ╠═4a3b85a9-f61c-4972-8e0a-deaf7779dbcf
# ╟─29cb2c1d-4885-49cf-9d4b-e70c84e5b5c8
# ╠═4d289a03-bdfb-4d47-b912-3f4a51f73c7d
# ╠═a4aa0980-aec1-4b38-858e-5e00211fdf38
# ╠═69f23083-111e-410b-95c8-1b01d8ca96e1
# ╟─b38b0a63-78dd-46cc-bc42-4834808135a6
# ╠═976a8082-e338-43f8-96b5-a39f47d639be
# ╟─da2a8d54-f8ac-4978-ac7e-0048fac271ed
# ╠═037e505e-6170-40d2-bab1-10507c449380
# ╠═17d3d977-8fdd-4172-9f4d-8a43fedd708d
# ╠═8742cd5c-7f1e-4fd2-be67-4b4c53544ae9
# ╟─d2a307e0-6f7a-4b6b-aed9-0d653bb16a10
# ╠═ea4236d5-3a76-46b6-a97e-f86126f491ea
# ╟─167a4138-f650-483c-84a7-01876e7c1470
# ╠═797c216c-8d3e-4aa4-b509-701e0fdf4cfe
# ╠═67b8dcf2-3ea6-4e38-a295-f88851bffc6b
# ╠═05fd3850-aa3f-4d35-8c83-5edbf83734be
# ╟─6fc9c819-79f2-49cf-a6ba-9945769abd74
# ╠═e41198f2-149a-473c-afa7-0c68345565df
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
