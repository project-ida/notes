---
author: "Ida"
---

# Toy Model of Pion Dressing and Magnetic Transitions

These notes isolate one specific piece of physics:

1. start from a toy Hamiltonian with explicit pion and photon modes,
2. integrate out the pionful sector,
3. diagonalise the resulting low-energy nuclear Hamiltonian,
4. show that the quantised photon still couples the resulting pion-dressed nuclear states.

The goal is pedagogical rather than realistic. We keep the strong dynamics schematic, but we keep the logic of the reduction explicit. In particular, we do **not** yet try to identify the states with realistic deuteron channels. That can be added later once the toy mechanism is clear.

Throughout, we set $\hbar = 1$.

## 1) Degrees of freedom and physical picture

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

## 2) Full toy Hamiltonian

We split the Hamiltonian into a diagonal part plus pion and photon couplings:

$$
H = H_0 + V_{\pi N} + V_{\gamma N}.
\label{eq:Hfullsplit}
$$

The diagonal part is

$$
H_0
=
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
V_{\pi N}
=
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
V_{\gamma N}
=
g_\gamma (a+a^\dagger)\,\hat\mu.
\label{eq:Vphotonfull}
$$

For the main derivation it is enough to keep the magnetic operator inside the retained low-energy space:

$$
\hat\mu
=
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

## 3) Retained and eliminated sectors

We keep the no-pion sector and eliminate the one-pion doorway sector.

The retained projector is

$$
P
=
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
Q
=
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
H_{\rm eff}(E)
=
PHP + PHQ\,\frac{1}{E-QHQ}\,QHP.
\label{eq:BHtoy}
$$

Eq. $\ref{eq:BHtoy}$ is exact. The approximation will enter only when we expand it to low order in the pion coupling.

## 4) Second-order elimination of the pionful sector

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
H_{\rm nuc}^{\rm eff}
=
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
V_\pi
=
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
H_{\rm nuc}^{\rm eff}
=
\begin{pmatrix}
E_g' & V_\pi \\
V_\pi & E_e'
\end{pmatrix}.
\label{eq:HeffCompact}
$$

This is the central structural result. After the pion has been integrated out, there is no explicit pion basis vector left, but there is now a direct low-energy coupling $V_\pi$ between the retained states.

## 5) Pion-dressed nuclear eigenstates

The physical low-energy nuclear states are obtained by diagonalising Eq. $\ref{eq:HeffCompact}$.

Write

$$
|1\rangle
=
\cos\theta\,|g\rangle
-
\sin\theta\,|e\rangle,
\qquad
|2\rangle
=
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
E_{1,2}
=
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

## 6) Magnetic operator in the dressed basis

We now ask how the photon couples the dressed states.

In the retained basis, the bare magnetic operator was

$$
\hat\mu
=
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
\langle 1|\hat\mu|2\rangle
=
\frac{\mu_e-\mu_g}{2}\sin 2\theta
+
m_0 \cos 2\theta.
\label{eq:mu12general}
$$

Eq. $\ref{eq:mu12general}$ is the second key result of the note.

It shows that the magnetic transition between the dressed states can survive in two different ways:

1. **State mixing**: even if $m_0 = 0$, one still gets

$$
\mu_{12}
=
\frac{\mu_e-\mu_g}{2}\sin 2\theta.
\label{eq:mu12mixingOnly}
$$

Thus a purely diagonal magnetic operator in the $\{|g\rangle,|e\rangle\}$ basis becomes off-diagonal in the dressed basis whenever the strong Hamiltonian mixes the states.

2. **Direct transition term**: if $m_0 \neq 0$, then even without much mixing one retains the term $m_0\cos 2\theta$.

The main pedagogical point is therefore:

> diagonalising the pion-dressed **Hamiltonian** does not generally diagonalise the magnetic **operator**.

That is why a magnetic transition can remain between the pion-dressed nuclear states.

## 7) Final post-pion Hamiltonian with the photon still explicit

We now keep the photon mode explicit and rewrite the full post-pion theory in the dressed basis:

$$
H_{\rm post\text{-}\pi}
=
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
H_{\gamma,\rm trans}
=
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

## 8) Special case: a degenerate spin-up / spin-down doublet

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
H_{\rm nuc}^{\rm eff}
=
E_0
\begin{pmatrix}
1 & 0 \\
0 & 1
\end{pmatrix}
-
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
|1\rangle
=
\frac{W_g|g\rangle + W_e|e\rangle}{\Omega},
\qquad
|2\rangle
=
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
\hat{\mu}
=
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
\langle 1|\hat{\mu}|2\rangle
=
\mu_0\,\frac{2W_gW_e}{W_g^2+W_e^2}.
\label{eq:spinflipmu12}
$$

So the quantised photon still couples the dressed states as long as both doorway couplings are nonzero.

## 9) What this toy model does and does not say

What the toy model captures:

- virtual pionful intermediate states can be eliminated,
- their effects survive as level shifts and induced mixing inside a no-pion low-energy Hamiltonian,
- the resulting dressed nuclear states can still couple magnetically to a quantised photon mode.

What the toy model does **not** yet attempt:

- a realistic two-nucleon spin-isospin structure,
- tensor mixing such as $^3S_1$-$^3D_1$,
- exchange-current corrections derived consistently with a realistic nuclear force.

Those are natural next extensions, but they are not needed to understand the basic mechanism shown here.

## 10) One-line summary

The full toy theory contains explicit pion and photon modes, but after integrating out the pionful doorway state one is left with a $2\times 2$ pion-dressed nuclear Hamiltonian and a photon coupling whose off-diagonal matrix element

$$
\mu_{12}
=
\frac{\mu_e-\mu_g}{2}\sin 2\theta
+
m_0\cos 2\theta
\label{eq:finalSummaryFormula}
$$

still drives transitions between the dressed nuclear states.
