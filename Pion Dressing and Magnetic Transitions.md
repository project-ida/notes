---
author: "Matt Lilley"
---

# Introduction

These notes build a toy nuclear model from explicit pion exchange to magnetic coupling between pion-dressed nuclear states. In particular, we:

1. start from a toy Hamiltonian with explicit pion and photon modes,
2. integrate out the pionful doorway sector to obtain low-energy effective nuclear Hamiltonians,
3. diagonalise those effective Hamiltonians to identify the pion-dressed nuclear states,
4. track how the magnetic operator couples those dressed states rather than the original bare states,
5. work through a concrete single-nucleus spin-based instantiation of the general model,
6. extend the construction to two coupled model nuclei and derive the corresponding $4\times4$ effective Hamiltonian,
7. keep the Bloch-Horowitz energy dependence explicit where needed, so that the dressed two-nucleus energies are not simply given by naive sums of single-nucleus energies,
8. use those dressed energies as preparation for later excitation-transfer questions, since it is the pion-generated levels that are subsequently coupled by the magnetic interaction.

The goal is pedagogical rather than realistic. We keep the strong dynamics schematic, but the logic of the reduction is made as explicit as possible. In particular, we do **not** yet try to identify the states with realistic deuteron channels. The aim is first to understand how pion exchange can generate nuclear levels and how magnetic couplings act between those generated levels, before moving on to more realistic models.

Throughout, we set $\hbar = 1$.

# Degrees of freedom and physical picture

We introduce three nuclear basis states:

$$
|g\rangle, \qquad |e\rangle, \qquad |\chi\rangle.
$$

The intended interpretation is:

- $|g\rangle$ and $|e\rangle$ are two low-energy **no-pion** nuclear basis states that we want to keep.
- $|\chi\rangle$ is a higher-energy **doorway configuration** that will only appear together with one explicit pion.

We also introduce two bosonic modes:

$$
a, a^\dagger \qquad \text{for the photon mode,}
$$

$$
b, b^\dagger \qquad \text{for the pion mode.}
$$

The basis states of the full toy problem therefore look like

$$
|g,n_\gamma,0_\pi\rangle,\qquad |e,n_\gamma,0_\pi\rangle,\qquad |\chi,n_\gamma,1_\pi\rangle.
$$

The important point is that $|g\rangle$ and $|e\rangle$ are **not yet** the physical ground and excited states. They are only basis states in the retained low-energy sector. The physical low-energy states will appear only after the pionful sector has been removed and the effective $2\times 2$ Hamiltonian has been diagonalised.

# Full toy Hamiltonian

We split the Hamiltonian into a diagonal part plus pion and photon couplings:

$$
H = H_0 + V_{\pi N} + V_{\gamma N}.
\label{eq:Hfullsplit}
$$

The diagonal part is

$$
H_0 =
E_g |g\rangle\langle g|
+
E_e |e\rangle\langle e|
+
E_\chi |\chi\rangle\langle \chi|
+
\omega_\pi b^\dagger b
+
\omega_\gamma a^\dagger a.
\label{eq:H0toy}
$$

The pion coupling is chosen to connect the two low-energy basis states to the same pionful doorway state:

$$
V_{\pi N} =
\Big(
W_g |\chi\rangle\langle g|
+
W_e |\chi\rangle\langle e|
\Big)b^\dagger
+
b\Big(
W_g |g\rangle\langle \chi|
+
W_e |e\rangle\langle \chi|
\Big).
\label{eq:Vpiontoy}
$$

Thus $|g,0_\pi\rangle$ and $|e,0_\pi\rangle$ can both make virtual excursions into $|\chi,1_\pi\rangle$.

The photon couples through a magnetic operator $\hat\mu$:

$$
V_{\gamma N} =
g_\gamma (a+a^\dagger)\,\hat\mu.
\label{eq:Vphotonfull}
$$

For the main derivation it is enough to keep the magnetic operator inside the retained low-energy space:

$$
\hat\mu =
\mu_g |g\rangle\langle g|
+
\mu_e |e\rangle\langle e|
+
m_0\Big(|g\rangle\langle e| + |e\rangle\langle g|\Big).
\label{eq:muBare}
$$

Two special cases are worth keeping in mind:

- $m_0 = 0$: the bare operator is diagonal in the $\{|g\rangle,|e\rangle\}$ basis.
- $m_0 \neq 0$: there is already a direct magnetic transition in that basis.

The first case is the cleanest one for seeing how pion-induced mixing alone can generate a transition between the dressed states.

# Retained and eliminated sectors

We keep the no-pion sector and eliminate the one-pion doorway sector.

The retained projector is

$$
P =
\sum_{n_\gamma=0}^{\infty}
\Big(
|g,n_\gamma,0_\pi\rangle\langle g,n_\gamma,0_\pi|
+
|e,n_\gamma,0_\pi\rangle\langle e,n_\gamma,0_\pi|
\Big),
\label{eq:Pprojector}
$$

and the eliminated projector is

$$
Q =
\sum_{n_\gamma=0}^{\infty}
|\chi,n_\gamma,1_\pi\rangle\langle \chi,n_\gamma,1_\pi|.
\label{eq:Qprojector}
$$

The exact projected Schrödinger equation is

$$
H_{\rm eff}(E)\,|\psi_P\rangle = E\,|\psi_P\rangle,
\label{eq:BHeigen}
$$

with the exact energy-dependent effective Hamiltonian

$$
H_{\rm eff}(E) =
PHP + PHQ\,\frac{1}{E-QHQ}\,QHP.
\label{eq:BHtoy}
$$

Eq. $\ref{eq:BHtoy}$ is exact. The approximation will enter only when we expand it to low order in the pion coupling.

# Second-order elimination of the pionful sector

We now keep terms through second order in $W_g$ and $W_e$.

The intermediate pionful energies seen from the two low-energy basis states are

$$
\Delta_g = E_\chi + \omega_\pi - E_g,
\qquad
\Delta_e = E_\chi + \omega_\pi - E_e.
\label{eq:gapDefs}
$$

For low-energy states one has $\Delta_g > 0$ and $\Delta_e > 0$.

At second order, it is consistent to replace the exact eigenvalue $E$ in the denominator of Eq. $\ref{eq:BHtoy}$ by an unperturbed low-energy energy. The reason is simple: the resolvent term is already $O(W^2)$, while the difference between $E$ and the unperturbed energy is itself $O(W^2)$, so feeding that correction back into the denominator would only change the answer at $O(W^4)$.

With that approximation, the pionful sector produces:

1. a shift of the $|g\rangle$ energy through the virtual process

$$
|g,0_\pi\rangle \to |\chi,1_\pi\rangle \to |g,0_\pi\rangle,
$$

2. a shift of the $|e\rangle$ energy through

$$
|e,0_\pi\rangle \to |\chi,1_\pi\rangle \to |e,0_\pi\rangle,
$$

3. an induced mixing through

$$
|g,0_\pi\rangle \to |\chi,1_\pi\rangle \to |e,0_\pi\rangle.
$$

The resulting effective nuclear Hamiltonian in the retained $\{|g\rangle,|e\rangle\}$ basis is

$$
H_{\rm nuc}^{\rm eff} =
\begin{pmatrix}
E_g - \dfrac{W_g^2}{\Delta_g}
&
-\dfrac{W_gW_e}{2}
\left(
\dfrac{1}{\Delta_g}
+
\dfrac{1}{\Delta_e}
\right)
\\[1.2em]
-\dfrac{W_gW_e}{2}
\left(
\dfrac{1}{\Delta_g}
+
\dfrac{1}{\Delta_e}
\right)
&
E_e - \dfrac{W_e^2}{\Delta_e}
\end{pmatrix}.
\label{eq:HeffNuclear}
$$

It is convenient to define

$$
E_g' = E_g - \frac{W_g^2}{\Delta_g},
\qquad
E_e' = E_e - \frac{W_e^2}{\Delta_e},
\label{eq:dressedDiagE}
$$

and

$$
V_\pi =
-\frac{W_gW_e}{2}
\left(
\frac{1}{\Delta_g}
+
\frac{1}{\Delta_e}
\right).
\label{eq:VpiEff}
$$

Then Eq. $\ref{eq:HeffNuclear}$ becomes

$$
H_{\rm nuc}^{\rm eff} =
\begin{pmatrix}
E_g' & V_\pi \\
V_\pi & E_e'
\end{pmatrix}.
\label{eq:HeffCompact}
$$

This is the central structural result. After the pion has been integrated out, there is no explicit pion basis vector left, but there is now a direct low-energy coupling $V_\pi$ between the retained states.

# Pion-dressed nuclear eigenstates

The physical low-energy nuclear states are obtained by diagonalising Eq. $\ref{eq:HeffCompact}$.

Write

$$
|1\rangle =
\cos\theta\,|g\rangle -
\sin\theta\,|e\rangle,
\qquad
|2\rangle =
\sin\theta\,|g\rangle
+
\cos\theta\,|e\rangle.
\label{eq:dressedStates}
$$

The mixing angle is defined by

$$
\tan 2\theta = \frac{2V_\pi}{E_e' - E_g'}.
\label{eq:tan2theta}
$$

The corresponding dressed energies are

$$
E_{1,2} =
\frac{E_g' + E_e'}{2}
\mp
\sqrt{
\left(
\frac{E_e' - E_g'}{2}
\right)^2
+
V_\pi^2
}.
\label{eq:dressedEnergies}
$$

At this point the interpretation changes:

- $|g\rangle$ and $|e\rangle$ are no longer the observable low-energy levels.
- $|1\rangle$ and $|2\rangle$ are the pion-dressed low-energy states.

This is the toy version of the statement that the explicit pionful dynamics has been absorbed into an effective no-pion Hamiltonian.

# Magnetic operator in the dressed basis

We now ask how the photon couples the dressed states.

In the retained basis, the bare magnetic operator was

$$
\hat\mu =
\begin{pmatrix}
\mu_g & m_0 \\
m_0 & \mu_e
\end{pmatrix}_{\{|g\rangle,|e\rangle\}}.
\label{eq:muBareMatrix}
$$

The same rotation that diagonalises Eq. $\ref{eq:HeffCompact}$ transforms the magnetic operator to the dressed basis:

$$
\hat\mu_{\rm dressed} = U^\dagger \hat\mu U,
\label{eq:muDressedDef}
$$

where $U$ is the rotation by the angle $\theta$ defined in Eq. $\ref{eq:tan2theta}$.

The off-diagonal matrix element between the dressed states is

$$
\mu_{12}
\equiv
\langle 1|\hat\mu|2\rangle =
\frac{\mu_e-\mu_g}{2}\sin 2\theta
+
m_0 \cos 2\theta.
\label{eq:mu12general}
$$

Eq. $\ref{eq:mu12general}$ is the second key result of the note.

It shows that the magnetic transition between the dressed states can survive in two different ways:

1. **State mixing**: even if $m_0 = 0$, one still gets

$$
\mu_{12} =
\frac{\mu_e-\mu_g}{2}\sin 2\theta.
\label{eq:mu12mixingOnly}
$$

Thus a purely diagonal magnetic operator in the $\{|g\rangle,|e\rangle\}$ basis becomes off-diagonal in the dressed basis whenever the strong Hamiltonian mixes the states.

2. **Direct transition term**: if $m_0 \neq 0$, then even without much mixing one retains the term $m_0\cos 2\theta$.

The main pedagogical point is therefore:

> diagonalising the pion-dressed **Hamiltonian** does not generally diagonalise the magnetic **operator**.

That is why a magnetic transition can remain between the pion-dressed nuclear states.

# Final post-pion Hamiltonian with the photon still explicit

We now keep the photon mode explicit and rewrite the full post-pion theory in the dressed basis:

$$
H_{\rm post\text{-}\pi} =
\omega_\gamma a^\dagger a
+
E_1 |1\rangle\langle 1|
+
E_2 |2\rangle\langle 2|
+
g_\gamma (a+a^\dagger)\hat\mu_{\rm dressed}.
\label{eq:postPionHamiltonian}
$$

The transition part of the photon coupling is

$$
H_{\gamma,\rm trans} =
g_\gamma (a+a^\dagger)\mu_{12}
\Big(
|1\rangle\langle 2|
+
|2\rangle\langle 1|
\Big).
\label{eq:transitionPiece}
$$

So the photon couples states such as

$$
|2,n_\gamma\rangle
\leftrightarrow
|1,n_\gamma+1\rangle
$$

with matrix element

$$
g_\gamma \mu_{12}\sqrt{n_\gamma+1}.
\label{eq:matrixElementPhoton}
$$

Near resonance, the relevant $2\times 2$ block in the product basis

$$
\{|2,n\rangle,\ |1,n+1\rangle\}
$$

is

$$
\begin{pmatrix}
E_2 + n\omega_\gamma
&
g_\gamma \mu_{12}\sqrt{n+1}
\\
g_\gamma \mu_{12}\sqrt{n+1}
&
E_1 + (n+1)\omega_\gamma
\end{pmatrix}.
\label{eq:photonBlock}
$$

This is the time-independent, quantised-field version of the magnetic transition. The pions have been integrated out, but the magnetic coupling between the resulting dressed nuclear states is still present explicitly through $\mu_{12}$.

# Special case: a degenerate spin-up / spin-down doublet

For the cleanest version of the toy model, let the retained states be the same bare nuclear configuration with opposite spin projection:

$$
|g\rangle = |\phi,\downarrow;0_\pi\rangle,
\qquad
|e\rangle = |\phi,\uparrow;0_\pi\rangle.
\label{eq:spinflipstates}
$$

This is the case where it is most natural to take the bare energies equal:

$$
E_g = E_e \equiv E_0.
\label{eq:spinflipdeg}
$$

The doorway state is still the higher-energy pionful configuration

$$
|\chi,1_\pi\rangle,
\label{eq:spinflipdoorway}
$$

so $\chi$ labels the nuclear part of the virtual intermediate state, while the explicit pion sits in the $1_\pi$ factor.

Because the retained states are degenerate, the denominator in Eq. $\ref{eq:BHtoy}$ can be expanded about the common retained-space energy $E_0$. Define

$$
\Delta \equiv E_\chi + \omega_\pi - E_0.
\label{eq:spinflipgap}
$$

Then Eq. $\ref{eq:HeffNuclear}$ simplifies to

$$
H_{\rm nuc}^{\rm eff} =
E_0
\begin{pmatrix}
1 & 0 \\
0 & 1
\end{pmatrix} -
\frac{1}{\Delta}
\begin{pmatrix}
W_g^2 & W_gW_e \\
W_gW_e & W_e^2
\end{pmatrix}.
\label{eq:spinflipHeff}
$$

So the pionful sector still does two things:

- it shifts the diagonal energies,
- it mixes the two spin states.

Define

$$
\Omega \equiv \sqrt{W_g^2 + W_e^2}.
\label{eq:spinflipOmega}
$$

Then the dressed eigenstates are

$$
|1\rangle =
\frac{W_g|g\rangle + W_e|e\rangle}{\Omega},
\qquad
|2\rangle =
\frac{-W_e|g\rangle + W_g|e\rangle}{\Omega},
\label{eq:spinflipdressed}
$$

with energies

$$
E_1 = E_0 - \frac{\Omega^2}{\Delta},
\qquad
E_2 = E_0.
\label{eq:spinflipenergies}
$$

So one linear combination is pulled down by the virtual pionful sector, while the orthogonal combination is untouched at this order. If $E_0$ is interpreted as the free or threshold energy, this gives the simple toy picture of one bound combination and one state still sitting at threshold.

Now choose the magnetic operator to be diagonal in the bare spin basis:

$$
\hat{\mu} =
\begin{pmatrix}
-\mu_0 & 0 \\
0 & \mu_0
\end{pmatrix}_{\{|g\rangle,|e\rangle\}}.
\label{eq:spinflipmu}
$$

This is the practical advantage of the spin-up / spin-down basis: the two bare states are energy-degenerate, but the magnetic operator still distinguishes them cleanly.

Transforming Eq. $\ref{eq:spinflipmu}$ into the dressed basis gives

$$
\mu_{12}
\equiv
\langle 1|\hat{\mu}|2\rangle =
\mu_0\,\frac{2W_gW_e}{W_g^2+W_e^2}.
\label{eq:spinflipmu12}
$$

So the quantised photon still couples the dressed states as long as both doorway couplings are nonzero.

# Two model nuclei and the excitation-transfer sector

We now take **two copies** of the toy system, labelled $A$ and $B$, and ask what the pion-eliminated Hamiltonian looks like when both subsystems are present.

For this section it is convenient to work in a local spin basis

$$
|-\rangle_i,\qquad |+\rangle_i,\qquad i=A,B,
$$

and to postpone the photon quantisation until the end, exactly as we did for the single-system model.

## Retained and pion states

The retained no-pion sector is the four-dimensional space

$$
P = \{|--\rangle,\ |-+\rangle,\ |+-\rangle,\ |++\rangle\},
\label{eq:ABPspace}
$$

where, for example,

$$
|-+\rangle \equiv |-\rangle_A\otimes |+\rangle_B.
$$

We take all four retained states to have the same bare energy $2E_0$.

The simplest local doorway model keeps four one-pion intermediate states:

$$
Q = \{|\chi_A,-\rangle,\ |\chi_A,+\rangle,\ |-,\chi_B\rangle,\ |+,\chi_B\rangle\}.
\label{eq:ABQspace}
$$

Here

- $|\chi_A,\pm\rangle$ means subsystem $A$ is in its doorway/pion configuration while $B$ is a spectator with spin $\pm$,
- $|\pm,\chi_B\rangle$ means subsystem $B$ is in its doorway/pion configuration while $A$ is a spectator with spin $\pm$.

This is the minimal eight-state extension of the single-system model: four retained states and four pionful states.

## Full block Hamiltonian

In the ordered retained basis

$$
\{|--\rangle,\ |-+\rangle,\ |+-\rangle,\ |++\rangle\},
\label{eq:ABbasisOrder}
$$

the full Hamiltonian has the block form

$$
H=
\begin{pmatrix}
2E_0 I_4 + g_\gamma(a+a^\dagger)\,\mu_x & V_{PQ} \\
V_{PQ}^\dagger & H_Q
\end{pmatrix}.
\label{eq:ABfullH}
$$

The pion-space (Q) Hamiltonian is diagonal:

$$
H_Q=
\mathrm{diag}
\Big(
E_{Q_A},E_{Q_A},E_{Q_B},E_{Q_B}
\Big),
\label{eq:HQAB}
$$

with

$$
E_{Q_A}=E_0+E_{\chi_A}+\omega_\pi,
\qquad
E_{Q_B}=E_0+E_{\chi_B}+\omega_\pi.
\label{eq:EQAB}
$$

The pion coupling block is

$$
V_{PQ}=
\begin{pmatrix}
W_{A-} & 0 & W_{B-} & 0 \\
0 & W_{A-} & W_{B+} & 0 \\
W_{A+} & 0 & 0 & W_{B-} \\
0 & W_{A+} & 0 & W_{B+}
\end{pmatrix}.
\label{eq:VPQAB}
$$

This matrix is easiest to read row by row:

- the first two columns correspond to creating a pion excitation on $A$,
- the last two columns correspond to creating a pion excitation on $B$,
- $W_{A\pm}$ and $W_{B\pm}$ are the local pion matrix elements for the $\pm$ retained states on each subsystem.

The bare magnetic operator is chosen to couple to a transverse field, so in the retained sector we take

$$
\mu_x =
\mu_A\,\sigma_x^{(A)}\otimes I_B
+
\mu_B\,I_A\otimes \sigma_x^{(B)}.
\label{eq:muXABcompact}
$$

Explicitly, in the basis of Eq. $\ref{eq:ABbasisOrder}$,

$$
\mu_x=
\begin{pmatrix}
0 & \mu_B & \mu_A & 0 \\
\mu_B & 0 & 0 & \mu_A \\
\mu_A & 0 & 0 & \mu_B \\
0 & \mu_A & \mu_B & 0
\end{pmatrix}.
\label{eq:muXABmatrix}
$$

So at the bare level the photon field flips the local $A$ or $B$ spin.

## Bloch-Horowitz elimination of the pion sector

Using the exact projection formula from Eq. $\ref{eq:BHtoy}$, the retained-space Hamiltonian is

$$
H_{\rm eff}(E)=PHP+PHQ\,\frac{1}{E-QHQ}\,QHP.
\label{eq:HABeffDef}
$$

For this model it is useful to keep the energy dependence explicit. Define the energy-dependent gaps

$$
\Delta_A(E)=E_{Q_A}-E=E_0+E_{\chi_A}+\omega_\pi-E,
\label{eq:DeltaAE}
$$

$$
\Delta_B(E)=E_{Q_B}-E=E_0+E_{\chi_B}+\omega_\pi-E.
\label{eq:DeltaBE}
$$

Then

$$
H_{\rm eff}(E) =
2E_0 I_4 -
V_{PQ}
\begin{pmatrix}
\Delta_A(E)^{-1} & 0 & 0 & 0 \\
0 & \Delta_A(E)^{-1} & 0 & 0 \\
0 & 0 & \Delta_B(E)^{-1} & 0 \\
0 & 0 & 0 & \Delta_B(E)^{-1}
\end{pmatrix}
V_{PQ}^\dagger .
\label{eq:HABeffRaw}
$$

Multiplying out Eq. $\ref{eq:HABeffRaw}$ gives the explicit retained-space matrix $H_{\text{eff}}$

$$
\begin{pmatrix}
2E_0-\dfrac{W_{A-}^2}{\Delta_A(E)}-\dfrac{W_{B-}^2}{\Delta_B(E)} &
-\dfrac{W_{B-}W_{B+}}{\Delta_B(E)} &
-\dfrac{W_{A-}W_{A+}}{\Delta_A(E)} &
0
\\[1.0em]
-\dfrac{W_{B-}W_{B+}}{\Delta_B(E)} &
2E_0-\dfrac{W_{A-}^2}{\Delta_A(E)}-\dfrac{W_{B+}^2}{\Delta_B(E)} &
0 &
-\dfrac{W_{A-}W_{A+}}{\Delta_A(E)}
\\[1.0em]
-\dfrac{W_{A-}W_{A+}}{\Delta_A(E)} &
0 &
2E_0-\dfrac{W_{A+}^2}{\Delta_A(E)}-\dfrac{W_{B-}^2}{\Delta_B(E)} &
-\dfrac{W_{B-}W_{B+}}{\Delta_B(E)}
\\[1.0em]
0 &
-\dfrac{W_{A-}W_{A+}}{\Delta_A(E)} &
-\dfrac{W_{B-}W_{B+}}{\Delta_B(E)} &
2E_0-\dfrac{W_{A+}^2}{\Delta_A(E)}-\dfrac{W_{B+}^2}{\Delta_B(E)}
\end{pmatrix}.
\label{eq:HABeffMatrix}
$$

This is the $4\times4$ matrix that replaces the single-system $2\times2$ Hamiltonian.

A more revealing way to write it is

$$
H_{\rm eff}(E) =
2E_0 I_4 -
\frac{1}{\Delta_A(E)}\,M_A\otimes I_B -
\frac{1}{\Delta_B(E)}\,I_A\otimes M_B,
\label{eq:HABfactorised}
$$

where

$$
M_A=
\begin{pmatrix}
W_{A-}^2 & W_{A-}W_{A+} \\
W_{A-}W_{A+} & W_{A+}^2
\end{pmatrix},
\qquad
M_B=
\begin{pmatrix}
W_{B-}^2 & W_{B-}W_{B+} \\
W_{B-}W_{B+} & W_{B+}^2
\end{pmatrix}.
\label{eq:MAMB}
$$

So the local-doorway model factorises into "pion dressing on $A$" plus "pion dressing on $B$".

If one only wants the second-order energy-independent approximation used earlier in the note, one simply evaluates

$$
\Delta_A(E)\to \Delta_A(2E_0),
\qquad
\Delta_B(E)\to \Delta_B(2E_0).
\label{eq:ABfixedGapApprox}
$$

## Diagonalisation: bright and dark states on each subsystem

Define the local norms

$$
\Omega_A=\sqrt{W_{A-}^2+W_{A+}^2},
\qquad
\Omega_B=\sqrt{W_{B-}^2+W_{B+}^2}.
\label{eq:OmegaAB}
$$

The local pion matrices $M_A$ and $M_B$ are rank-one, so each has one nonzero-eigenvalue "bright" state and one zero-eigenvalue "dark" state:

$$
|b_A\rangle=
\frac{W_{A-}|-\rangle_A+W_{A+}|+\rangle_A}{\Omega_A},
\qquad
|d_A\rangle=
\frac{-W_{A+}|-\rangle_A+W_{A-}|+\rangle_A}{\Omega_A},
\label{eq:brightdarkA}
$$

$$
|b_B\rangle=
\frac{W_{B-}|-\rangle_B+W_{B+}|+\rangle_B}{\Omega_B},
\qquad
|d_B\rangle=
\frac{-W_{B+}|-\rangle_B+W_{B-}|+\rangle_B}{\Omega_B}.
\label{eq:brightdarkB}
$$

These satisfy

$$
M_A|b_A\rangle=\Omega_A^2|b_A\rangle,
\qquad
M_A|d_A\rangle=0,
\label{eq:MAeig}
$$

$$
M_B|b_B\rangle=\Omega_B^2|b_B\rangle,
\qquad
M_B|d_B\rangle=0.
\label{eq:MBeig}
$$

Because Eq. $\ref{eq:HABfactorised}$ is a sum of an $A$-only piece and a $B$-only piece, the full eigenvectors are just products:

$$
|bb\rangle,\qquad |bd\rangle,\qquad |db\rangle,\qquad |dd\rangle.
\label{eq:ABproductStates}
$$

The important point is that the eigenvectors do **not** depend on the Bloch-Horowitz energy parameter $E$; only the eigenvalues do.

The corresponding self-consistency equations are

$$
E_{bb} =
2E_0 -
\frac{\Omega_A^2}{\Delta_A(E_{bb})} -
\frac{\Omega_B^2}{\Delta_B(E_{bb})},
\label{eq:EbbSelf}
$$

$$
E_{bd} =
2E_0 -
\frac{\Omega_A^2}{\Delta_A(E_{bd})},
\qquad
E_{db} =
2E_0 -
\frac{\Omega_B^2}{\Delta_B(E_{db})},
\label{eq:EbdEdbSelf}
$$

$$
E_{dd}=2E_0.
\label{eq:EddSelf}
$$

So this model gives one doubly-lowered state, two singly-lowered states, and one untouched threshold state.

The states

$$
|bd\rangle=|b_A\rangle\otimes|d_B\rangle,
\qquad
|db\rangle=|d_A\rangle\otimes|b_B\rangle
\label{eq:oneExcitationSector}
$$

are the natural one-excitation sector: one subsystem is locally dressed into its lowered state while the other remains in its dark partner.

## Symmetric limit

If the local couplings are symmetric,

$$
W_{A+}=W_{A-}\equiv W_A,
\qquad
W_{B+}=W_{B-}\equiv W_B,
\label{eq:symmetricAB}
$$

then

$$
|b_A\rangle=\frac{|+\rangle_A+|-\rangle_A}{\sqrt2},
\qquad
|d_A\rangle=\frac{|+\rangle_A-|-\rangle_A}{\sqrt2},
\label{eq:symmetricABstatesA}
$$

and similarly for $B$.

So in this limit the  product-like combination are

$$
|bd\rangle =
\frac{(|+\rangle_A+|-\rangle_A)(|+\rangle_B-|-\rangle_B)}{2}.
\label{eq:bdExample}
$$

The corresponding fixed-gap second-order energies are

$$
E_{bb}= 2E_0-\frac{2W_A^2}{\Delta_A(E_{bb})}-\frac{2W_B^2}{\Delta_B(E_{bb})},
\label{eq:EbbSym}
$$

$$
E_{bd}= 2E_0-\frac{2W_A^2}{\Delta_A(E_{bd})},
\qquad
E_{db}= 2E_0-\frac{2W_B^2}{\Delta_B(E_{bd})},
\label{eq:EbdEdbSym}
$$

$$
E_{dd}=2E_0.
\label{eq:EddSym}
$$

## Rotating the magnetic operator

Now apply the same local bright/dark rotation to the magnetic operator.

Let

$$
U=U_A\otimes U_B,
\label{eq:UAB}
$$

where $U_A$ maps $(|-\rangle_A,|+\rangle_A)$ to $(|b_A\rangle,|d_A\rangle)$, and similarly for $B$.

For each subsystem one finds

$$
U_i^\dagger \sigma_x U_i =
\alpha_i\,\Sigma_z^{(i)}+\beta_i\,\Sigma_x^{(i)},
\qquad i=A,B,
\label{eq:localRotSigmaX}
$$

with

$$
\alpha_i=\frac{2W_{i-}W_{i+}}{W_{i-}^2+W_{i+}^2},
\qquad
\beta_i=\frac{W_{i-}^2-W_{i+}^2}{W_{i-}^2+W_{i+}^2}.
\label{eq:alphabeta}
$$

So the dressed magnetic operator is

$$
\mu_x^{\rm dressed} =
\mu_A\big(\alpha_A\Sigma_z^{(A)}+\beta_A\Sigma_x^{(A)}\big)\otimes I_B
+
\mu_B I_A\otimes\big(\alpha_B\Sigma_z^{(B)}+\beta_B\Sigma_x^{(B)}\big).
\label{eq:muXdressedCompact}
$$

In the ordered product basis

$$
\{|bb\rangle,\ |bd\rangle,\ |db\rangle,\ |dd\rangle\},
\label{eq:ABdressedBasisOrder}
$$

this becomes

$$
\mu_x^{\rm dressed} =
\begin{pmatrix}
\mu_A\alpha_A+\mu_B\alpha_B & \mu_B\beta_B & \mu_A\beta_A & 0 \\
\mu_B\beta_B & \mu_A\alpha_A-\mu_B\alpha_B & 0 & \mu_A\beta_A \\
\mu_A\beta_A & 0 & -\mu_A\alpha_A+\mu_B\alpha_B & \mu_B\beta_B \\
0 & \mu_A\beta_A & \mu_B\beta_B & -\mu_A\alpha_A-\mu_B\alpha_B
\end{pmatrix}.
\label{eq:muXdressedMatrix}
$$

The most relevant off-diagonal elements are therefore

$$
\langle bb|\mu_x|bd\rangle=\mu_B\beta_B,
\qquad
\langle bb|\mu_x|db\rangle=\mu_A\beta_A,
\label{eq:bbcouplings}
$$

$$
\langle bd|\mu_x|dd\rangle=\mu_A\beta_A,
\qquad
\langle db|\mu_x|dd\rangle=\mu_B\beta_B.
\label{eq:ddcouplings}
$$

## Symmetric-coupling limit of the magnetic operator

In the symmetric limit of Eq. $\ref{eq:symmetricAB}$ one has

$$
\beta_A=\beta_B=0,
\qquad
\alpha_A=\alpha_B=1.
\label{eq:symmetricAlphaBeta}
$$

Then Eq. $\ref{eq:muXdressedMatrix}$ collapses to a diagonal matrix:

$$
\mu_x^{\rm dressed} =
\mathrm{diag}
\Big(
\mu_A+\mu_B,\ \mu_A-\mu_B,\ -\mu_A+\mu_B,\ -\mu_A-\mu_B
\Big).
\label{eq:muXdressedSym}
$$

So in the perfectly symmetric case the dressed eigenstates are exactly the product states built from $(|+\rangle\pm|-\rangle)/\sqrt2$, but the $B_x$ coupling becomes purely longitudinal in that same basis. This is why the off-diagonal transition matrix elements disappear in the fully symmetric limit.

In practice, the most informative case is often the **near-symmetric** one: the eigenstates still look very close to the simple product combinations, but the coefficients $\beta_A$ and $\beta_B$ remain small and nonzero, so the photon operator still has off-diagonal pieces.

## Symmetric limit for identical subsystems

Now take the symmetric limit of Eq. $\ref{eq:symmetricAB}$ and also assume that the two subsystems are identical:

$$
W_A = W_B \equiv W,
\qquad
E_{\chi_A}=E_{\chi_B}\equiv E_\chi.
\label{eq:identicalAB}
$$

Then the two energy-dependent gaps become the same function,

$$
\Delta_A(E)=\Delta_B(E)\equiv \Delta(E),
\label{eq:commonDeltaE}
$$

with

$$
\Delta(E)=E_0+E_\chi+\omega_\pi-E.
\label{eq:commonDeltaEdef}
$$

In the dressed product basis

$$
\{|bb\rangle,\ |bd\rangle,\ |db\rangle,\ |dd\rangle\},
$$

the effective Hamiltonian of Eq. $\ref{eq:HABfactorised}$ is then diagonal:

$$
H_{\rm eff}(E) =
\mathrm{diag}
\left(
2E_0-\frac{4W^2}{\Delta(E)},
\;
2E_0-\frac{2W^2}{\Delta(E)},
\;
2E_0-\frac{2W^2}{\Delta(E)},
\;
2E_0
\right).
\label{eq:HABdiagIdentical}
$$

It is useful to name these diagonal entries as functions of the common energy variable $E$:

$$
\lambda_{bb}(E)=2E_0-\frac{4W^2}{\Delta(E)},
\label{eq:lambdabb}
$$

$$
\lambda_{bd}(E)=\lambda_{db}(E)=2E_0-\frac{2W^2}{\Delta(E)},
\label{eq:lambdabd}
$$

$$
\lambda_{dd}(E)=2E_0.
\label{eq:lambdadd}
$$

So the pion-dressed energies depend on the Bloch-Horowitz energy parameter through the same function $\Delta(E)$. At fixed $E$, the doubly-bright state $|bb\rangle$ is shifted down twice as much as the singly-bright states $|bd\rangle$ and $|db\rangle$, while the doubly-dark state $|dd\rangle$ is unshifted.

The key symmetry is that the $|bd\rangle,|db\rangle$ pair sits exactly halfway between $|bb\rangle$ and $|dd\rangle$.

To see this, subtract the $bd/db$ entry from the $bb$ and $dd$ entries:

$$
\lambda_{bb}(E)-\lambda_{bd}(E) =
-\frac{2W^2}{\Delta(E)},
\label{eq:bbMinusbd}
$$

$$
\lambda_{dd}(E)-\lambda_{bd}(E) =
\frac{2W^2}{\Delta(E)}.
\label{eq:ddMinusbd}
$$

Therefore

$$
\lambda_{bb}(E)-\lambda_{bd}(E) =
-\Big(\lambda_{dd}(E)-\lambda_{bd}(E)\Big),
\label{eq:symmetricSpacing}
$$

or equivalently

$$
\lambda_{bd}(E)=\lambda_{db}(E)=\frac{\lambda_{bb}(E)+\lambda_{dd}(E)}{2}.
\label{eq:midpointRelation}
$$

So at the level of the energy-dependent effective Hamiltonian, the singly-bright pair is exactly the midpoint between the doubly-bright and doubly-dark states.

This is exactly the structure that matters in a second-order excitation-transfer calculation from $|bd\rangle$ to $|db\rangle$. In that calculation the intermediate $|bb\rangle$ and $|dd\rangle$ pathways are both evaluated at the common external energy of the $|bd\rangle/|db\rangle$ sector. The two intermediate paths therefore sit symmetrically above and below that energy, so their energy denominators come with equal magnitude and opposite sign. In this symmetric identical-system limit, that is precisely the condition for destructive interference between the $bb$ and $dd$ virtual pathways.

## Solving for the actual low-energy roots

We now keep the symmetric identical-system assumptions of Section 9.8 and go one step further: instead of treating $E$ as a common external parameter, we solve the Bloch-Horowitz self-consistency equations for the actual low-energy roots.

For this subsection, take

$$
E_0=0,
\qquad
E_\chi=E_0=0,
\label{eq:E0andEchiZero}
$$

and define

$$
E_\pi \equiv \omega_\pi.
\label{eq:EpiDef}
$$

Then Eq. $\ref{eq:commonDeltaEdef}$ reduces to

$$
\Delta(E)=E_\pi-E.
\label{eq:DeltaSimple}
$$

It is also convenient to absorb the symmetric coupling into

$$
\Omega^2 \equiv 2W^2.
\label{eq:OmegaDefLast}
$$

With this notation, the diagonal entries of Eq. $\ref{eq:HABdiagIdentical}$ become

$$
\lambda_{bb}(E)=-\frac{2\Omega^2}{E_\pi-E},
\label{eq:lambdabbSimple}
$$

$$
\lambda_{bd}(E)=\lambda_{db}(E)=-\frac{\Omega^2}{E_\pi-E},
\label{eq:lambdabdSimple}
$$

$$
\lambda_{dd}(E)=0.
\label{eq:lambdaddSimple}
$$

The physical dressed energies are found from the self-consistency conditions

$$
E_{bb}=\lambda_{bb}(E_{bb}),
\qquad
E_{bd}=E_{db}=\lambda_{bd}(E_{bd}),
\qquad
E_{dd}=0.
\label{eq:selfConsLast}
$$

### Exact quadratic equations

For the singly-bright states $bd$ and $db$,

$$
E_{bd}=-\frac{\Omega^2}{E_\pi-E_{bd}},
\label{eq:EbdImplicit}
$$

so

$$
E_{bd}(E_\pi-E_{bd})=-\Omega^2,
\label{eq:EbdQuadraticStep}
$$

and therefore

$$
E_{bd}^2-E_\pi E_{bd}-\Omega^2=0.
\label{eq:EbdQuadratic}
$$

Thus

$$
E_{bd}^{(\pm)}=E_{db}^{(\pm)}=\frac{E_\pi\pm\sqrt{E_\pi^2+4\Omega^2}}{2}.
\label{eq:EbdRoots}
$$

For the doubly-bright state $bb$,

$$
E_{bb}=-\frac{2\Omega^2}{E_\pi-E_{bb}},
\label{eq:EbbImplicit}
$$

so

$$
E_{bb}(E_\pi-E_{bb})=-2\Omega^2,
\label{eq:EbbQuadraticStep}
$$

and hence

$$
E_{bb}^2-E_\pi E_{bb}-2\Omega^2=0.
\label{eq:EbbQuadratic}
$$

Therefore

$$
E_{bb}^{(\pm)}=\frac{E_\pi\pm\sqrt{E_\pi^2+8\Omega^2}}{2}.
\label{eq:EbbRoots}
$$

Finally,

$$
E_{dd}=0.
\label{eq:EddExactLast}
$$

The plus roots in Eqs. $\ref{eq:EbdRoots}$ and $\ref{eq:EbbRoots}$ sit near the pion scale and are not the low-energy branches we want. The relevant low-energy solutions are therefore

$$
E_{bd}^{\rm low}=E_{db}^{\rm low}=\frac{E_\pi-\sqrt{E_\pi^2+4\Omega^2}}{2},
\label{eq:EbdLow}
$$

$$
E_{bb}^{\rm low}=\frac{E_\pi-\sqrt{E_\pi^2+8\Omega^2}}{2},
\label{eq:EbbLow}
$$

$$
E_{dd}=0.
\label{eq:EddLow}
$$

### Small-parameter expansion

Define the small parameter

$$
x\equiv \frac{\Omega^2}{E_\pi^2}\ll 1.
\label{eq:xSmall}
$$

Using

$$
\sqrt{1+u}=1+\frac{u}{2}-\frac{u^2}{8}+O(u^3),
\label{eq:sqrtExpand}
$$

we expand Eq. $\ref{eq:EbdLow}$ as

$$
E_{bd}^{\rm low} =
\frac{E_\pi-E_\pi\sqrt{1+4x}}{2} =
-E_\pi x+E_\pi x^2+O(E_\pi x^3),
\label{eq:EbdExpandStep}
$$

so

$$
E_{bd}^{\rm low}=E_{db}^{\rm low} =
-\frac{\Omega^2}{E_\pi}
+
\frac{\Omega^4}{E_\pi^3}
+
O\!\left(\frac{\Omega^6}{E_\pi^5}\right).
\label{eq:EbdExpand}
$$

Similarly, Eq. $\ref{eq:EbbLow}$ gives

$$
E_{bb}^{\rm low} =
\frac{E_\pi-E_\pi\sqrt{1+8x}}{2} =
-2E_\pi x+4E_\pi x^2+O(E_\pi x^3),
\label{eq:EbbExpandStep}
$$

so

$$
E_{bb}^{\rm low} =
-\frac{2\Omega^2}{E_\pi}
+
\frac{4\Omega^4}{E_\pi^3}
+
O\!\left(\frac{\Omega^6}{E_\pi^5}\right).
\label{eq:EbbExpand}
$$

And of course

$$
E_{dd}=0.
\label{eq:EddExpand}
$$

### Energy differences

Now compare the singly-bright state to its neighbours above and below.

The exact spacings are

$$
E_{dd}-E_{bd}^{\rm low} =
\frac{\sqrt{E_\pi^2+4\Omega^2}-E_\pi}{2},
\label{eq:ddMinusBdExact}
$$

and

$$
E_{bd}^{\rm low}-E_{bb}^{\rm low} =
\frac{\sqrt{E_\pi^2+8\Omega^2}-\sqrt{E_\pi^2+4\Omega^2}}{2}.
\label{eq:bdMinusBbExact}
$$

Expanding these to the same order gives

$$
E_{dd}-E_{bd}^{\rm low} =
\frac{\Omega^2}{E_\pi} -
\frac{\Omega^4}{E_\pi^3}
+
O\!\left(\frac{\Omega^6}{E_\pi^5}\right),
\label{eq:ddMinusBdExpand}
$$

$$
E_{bd}^{\rm low}-E_{bb}^{\rm low} =
\frac{\Omega^2}{E_\pi} -
3\frac{\Omega^4}{E_\pi^3}
+
O\!\left(\frac{\Omega^6}{E_\pi^5}\right).
\label{eq:bdMinusBbExpand}
$$

So the two spacings are equal at leading order but differ at the next order:

$$
\big(E_{dd}-E_{bd}^{\rm low}\big)-\big(E_{bd}^{\rm low}-E_{bb}^{\rm low}\big) =
\frac{2\Omega^4}{E_\pi^3}
+
O\!\left(\frac{\Omega^6}{E_\pi^5}\right).
\label{eq:asymmetryExpand}
$$

Equivalently, the midpoint shift is

$$
E_{bd}^{\rm low}-\frac{E_{bb}^{\rm low}+E_{dd}}{2} =
-\frac{\Omega^4}{E_\pi^3}
+
O\!\left(\frac{\Omega^6}{E_\pi^5}\right).
\label{eq:midpointShift}
$$

So the $bd/db$ pair lies slightly **below** the exact midpoint between $bb$ and $dd$ once the self-consistent $E$-dependence is kept.

### Writing the asymmetry in terms of $E_{bd}$

Introduce the leading-order singly-bright energy

$$
E_{bd}^{(0)}\equiv -\frac{\Omega^2}{E_\pi}.
\label{eq:Ebd0}
$$

Then

$$
\frac{\Omega^2}{E_\pi}\frac{E_{bd}^{(0)}}{E_\pi} =
-\frac{\Omega^4}{E_\pi^3}.
\label{eq:Ebd0Identity}
$$

So Eq. $\ref{eq:midpointShift}$ can be written as

$$
E_{bd}^{\rm low}-\frac{E_{bb}^{\rm low}+E_{dd}}{2} =
\frac{\Omega^2}{E_\pi}\frac{E_{bd}^{(0)}}{E_\pi}
+
O\!\left(\frac{\Omega^6}{E_\pi^5}\right)
\label{eq:midpointShiftEbd0}
$$

Likewise Eq. $\ref{eq:asymmetryExpand}$ becomes

$$
\big(E_{dd}-E_{bd}^{\rm low}\big)-\big(E_{bd}^{\rm low}-E_{bb}^{\rm low}\big) =
-2\,\frac{\Omega^2}{E_\pi}\frac{E_{bd}^{(0)}}{E_\pi}
+
O\!\left(\frac{\Omega^6}{E_\pi^5}\right).
\label{eq:asymmetryEbd0}
$$

To the order kept here, one may replace $E_{bd}^{(0)}$ on the right-hand sides by the full low-energy $E_{bd}^{\rm low}$, because the difference between them only feeds in at $O(\Omega^6/E_\pi^5)$.
