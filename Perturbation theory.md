# Notes on Perturbation Theory for a Two-Ensemble Dicke Model
*(Donors + Acceptors coupled to a single quantised mode)*

These notes build up the machinery we need to do **effective-Hamiltonian perturbation theory** properly, including the appearance of **folded-diagram (derivative) terms at 4th order**. We keep the discussion general first, then later we will plug in our specific Dicke Hamiltonian and basis.

---

## 1) The model

We consider a Hamiltonian split into “bare” and “interaction” parts:

$H = H_0 + V$.

A convenient Dicke-like choice is:

- Single bosonic mode: $a, a^\dagger$ with frequency $\omega_c$.
- Two ensembles of two-level systems (TLS): donors $D$ and acceptors $A$.
- Collective spin operators (Dicke operators) for each ensemble:
  - $S_D^\pm, S_D^z$ for donors, size $N_D$.
  - $S_A^\pm, S_A^z$ for acceptors, size $N_A$.

A standard “Rabi/Dicke” style Hamiltonian is:


$$
H_0
=
\omega_c a^\dagger a
+
\omega_0 \big(S_D^z + S_A^z\big)
$$


$$
V
=
(a+a^\dagger)
\Big[
v_D (S_D^+ + S_D^-)
+
v_A (S_A^+ + S_A^-)
\Big].
$$

Here $v_D$ and $v_A$ are the single-particle couplings for donors and acceptors (not assumed equal).

---

## 2) Choice of basis and the P/Q split

### Dicke basis (conceptual)
A convenient label for basis states is:

$|N_D^*, N_A^*, n\rangle$,

where:
- $N_D^*$ is the number of donor excitations in the symmetric Dicke ladder ($0,1,\dots,N_D$),
- $N_A^*$ is the number of acceptor excitations ($0,1,\dots,N_A$),
- $n$ is the photon number.

The bare energies take the schematic form:


$$
E^{(0)}(N_D^*,N_A^*,n)
=
\omega_0 (N_D^*+N_A^*)
+
\omega_c n
\quad
\text{(up to constant offsets)}.
$$

### The two-dimensional P space
We choose a “model space” $P$ consisting of the two single-excitation states at a chosen photon sector (often $k=0$, i.e. photon number fixed to some reference $n$):

- Donor-like state:

$|D\rangle \equiv |1,0,n\rangle$

- Acceptor-like state:

$|A\rangle \equiv |0,1,n\rangle$

So $P$ is 2D and is spanned by $\{|D\rangle,|A\rangle\}$. Let $Q$ be the complement:

$Q = 1 - P$.

We will write operator blocks like:
- $H_{PP} \equiv PHP$
- $H_{PQ} \equiv PHQ$
- $H_{QP} \equiv QHP$
- $H_{QQ} \equiv QHQ$

and similarly for $H_0$ and $V$.

---

## 3) Exact elimination of Q space: Bloch–Horowitz effective Hamiltonian

Start from the Schrödinger equation:

$H|\Psi\rangle = E|\Psi\rangle$.

Decompose the state:

$|\Psi\rangle = |\psi_P\rangle + |\psi_Q\rangle$,

where $|\psi_P\rangle = P|\Psi\rangle$ and $|\psi_Q\rangle = Q|\Psi\rangle$.

Projecting onto $P$ and $Q$ gives the coupled block equations:


$$
(H_{PP} - E)\,|\psi_P\rangle + H_{PQ}\,|\psi_Q\rangle = 0
$$


$$
H_{QP}\,|\psi_P\rangle + (H_{QQ}-E)\,|\psi_Q\rangle = 0.
$$

Assuming $(E-H_{QQ})$ is invertible on $Q$, solve the second equation:


$$
|\psi_Q\rangle
=
(E-H_{QQ})^{-1} H_{QP}\,|\psi_P\rangle.
$$

Insert into the $P$ equation to obtain the **exact energy-dependent effective Hamiltonian**:


$$
H_{\mathrm{eff}}(E)
=
H_{PP}
+
H_{PQ}\,(E-H_{QQ})^{-1}\,H_{QP}.
$$

This is often called the **Bloch–Horowitz (BH)** or **Feshbach** effective Hamiltonian.

**Key point:** $H_{\mathrm{eff}}(E)$ depends on $E$, so the eigenvalue problem is nonlinear:


$$
H_{\mathrm{eff}}(E)\,|\psi_P\rangle
=
E\,|\psi_P\rangle.
$$

Solving this self-consistently reproduces the exact full-space eigenvalues associated with the chosen $P$ sector.

---

## 4) Perturbative expansion: resolvent and “unfolded” series

We now expand in powers of $V$.

Write:

$H = H_0 + V$,

and correspondingly:

$H_{QQ} = (H_0)_{QQ} + V_{QQ}$, etc.

Define an “unperturbed” $Q$-space resolvent:


$$
G_0(E)
\equiv
(E-(H_0)_{QQ})^{-1}.
$$

Then we expand the full resolvent:


$$
(E-H_{QQ})^{-1}
=
\big(E-(H_0)_{QQ}-V_{QQ}\big)^{-1}
=
G_0(E) + G_0(E)V_{QQ}G_0(E) + G_0(E)V_{QQ}G_0(E)V_{QQ}G_0(E)+\cdots
$$

Insert into BH:


$$
H_{\mathrm{eff}}(E)
=
H_{PP}
+
V_{PQ}G_0(E)V_{QP}
+
V_{PQ}G_0(E)V_{QQ}G_0(E)V_{QP}
+
V_{PQ}G_0(E)V_{QQ}G_0(E)V_{QQ}G_0(E)V_{QP}
+\cdots
$$

This produces an expansion in powers of $V$:

- 2nd order: $V_{PQ}G_0(E)V_{QP}$
- 3rd order: $V_{PQ}G_0(E)V_{QQ}G_0(E)V_{QP}$
- 4th order: $V_{PQ}G_0(E)V_{QQ}G_0(E)V_{QQ}G_0(E)V_{QP}$
- etc.

If we evaluate these terms at a fixed reference energy $E=E_0$ (typically the degenerate bare energy of the $P$ states), we get what we will call the **unfolded** contributions (no intermediate return to $P$ inside the resolvent expansion).

---

## 5) Why energy dependence matters: self-consistency vs energy-independent expansions

### Self-consistent (BH) viewpoint
In BH, you compute $H_{\mathrm{eff}}(E)$ and solve the nonlinear problem

$H_{\mathrm{eff}}(E)\psi_P = E\psi_P$.

This automatically includes “folding” effects because you never expand away the $E$ dependence: it is treated exactly (within the chosen truncation of $Q$).

### Energy-independent perturbation theory viewpoint
Often we want an **energy-independent** effective Hamiltonian expanded order-by-order (Rayleigh–Schrödinger style). Then we must handle the fact that $H_{\mathrm{eff}}$ depends on $E$.

This is where **folded-diagram (derivative) terms** appear.

---

## 6) The origin of folded terms: Taylor expanding the self-energy

Define the BH self-energy operator:

$\Sigma(E) \equiv H_{PQ}(E-H_{QQ})^{-1}H_{QP}$.

Then:

$H_{\mathrm{eff}}(E) = H_{PP} + \Sigma(E)$.

Choose a reference energy $E_0$ (for our degenerate $P$ space this is the common bare energy of $|D\rangle$ and $|A\rangle$), and write:

$E = E_0 + \delta E$.

Now Taylor expand:


$$
\Sigma(E)
=
\Sigma(E_0)
+
\delta E\,\Sigma'(E_0)
+
\frac{(\delta E)^2}{2}\Sigma''(E_0)
+
\cdots
$$

Crucial power counting:
- $\Sigma(E_0)$ starts at order $V^2$.
- Typically $\delta E$ is also order $V^2$ (it is an energy shift generated by the interaction).

Therefore the term

$\delta E\,\Sigma'(E_0)$

is of order $V^4$.

That is exactly the **leading folded contribution at 4th order**.

### Why derivatives appear
The derivative comes from differentiating the resolvent:


$$
\frac{d}{dE}(E-H_{QQ})^{-1}
=
(E-H_{QQ})^{-2}.
$$

So folded terms correspond to squared denominators in the intermediate-state sums. Diagrammatically, they are associated with intermediate returns to the model space $P$ that would otherwise produce zero denominators in naive time-ordered perturbation theory.

---

## 7) What “folded” means when P is two-dimensional

Here $P$ contains two states, $|D\rangle$ and $|A\rangle$.

A process can “return to P” in the middle by landing on **either** state (with the correct photon sector).

- Returning early to $|D\rangle$ corresponds to “dressing the donor leg”.
- Returning early to $|A\rangle$ corresponds to “dressing the acceptor leg”.

This is why, in a 2D $P$ space, the folded correction is naturally a **matrix product** structure (schematically):


$$
H_{\mathrm{eff}}^{(\le 4)}
\approx
H_{PP}
+
\Sigma^{(2)}(E_0)
+
\Sigma^{(4)}_{\mathrm{unfolded}}(E_0)
+
\Sigma^{(2)\prime}(E_0)\,\Sigma^{(2)}(E_0)
\quad
\text{(up to convention-dependent symmetrisation)}.
$$

When we look specifically at the **off-diagonal element** $AD$, the folded term contains contributions corresponding to “hit $D$ early” and “hit $A$ early”:

- “hit $D$ early” dressing contributes via the $P$-index $p=D$
- “hit $A$ early” dressing contributes via the $P$-index $p=A$

This is exactly how “getting to the end point early” enters analytically: it is one of the allowed intermediate $P$ states in the folded correction.

---

## 8) Stop point for the general formalism

At this stage we have:

1. A clear $P/Q$ reduction to an exact $H_{\mathrm{eff}}(E)$ (BH/Feshbach).
2. A perturbative expansion of $H_{\mathrm{eff}}(E)$ in powers of $V$ that yields “unfolded” contributions at fixed $E_0$.
3. A Taylor expansion in $E$ showing that, at 4th order, we must include derivative terms (folded diagrams) because $\delta E$ is itself order $V^2$.

Next step (in our Dicke model):
- Choose the explicit Dicke basis states and compute $\Sigma^{(2)}_{DD}(E_0)$, $\Sigma^{(2)}_{AA}(E_0)$, $\Sigma^{(2)}_{AD}(E_0)$ keeping full $(n,n+1)$ dependence.
- Then compute $\Sigma^{(2)\prime}(E_0)$ and assemble the 4th-order folded correction.
- Compare “static at $E_0$” vs “self-consistent BH” and show the cancellations we observed numerically.

---
