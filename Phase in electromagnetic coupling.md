# Phase in Electomagnetic coupling

These notes build up a clean “mental model” for how phases arise in light–matter coupling when two **identical** two-level systems (TLS) interact with a **single quantised electromagnetic mode**, including both **electric** and **magnetic** dipole contributions. The focus is on:

- how we write $H_{\mathrm{int}}$ from general $E$ and $B$ couplings,
- how this reduces to coupling to a **single oscillator quadrature**,
- where the **phase factors** come from,
- how phases can be **gauged away** (factored out),
- and when a **relative phase difference** between donor/acceptor is physically meaningful.

---

## 1. The setup: two identical TLS and a single mode

We have two identical TLS labelled $j \in \{D, A\}$ (donor/acceptor), transition frequency $\omega_0$, and a single bosonic mode (e.g. cavity/waveguide mode) with frequency $\omega_c$:

$$
H_0
=
\hbar \omega_c a^\dagger a
+
\sum_{j=D,A}\frac{\hbar \omega_0}{2}\,\sigma_z^{(j)}.
\label{eq:H0}
$$

We will mostly care about the **interaction** Hamiltonian.

---

## 2. General dipole interaction with $E$ and $B$

In the dipole approximation (TLS size $\ll \lambda$), the interaction for TLS $j$ is:

$$
H_{\mathrm{int}}^{(j)}
=
-\hat{\mathbf d}^{(j)}\cdot \hat{\mathbf E}(\mathbf r_j)
-\hat{\boldsymbol\mu}^{(j)}\cdot \hat{\mathbf B}(\mathbf r_j),
\label{eq:Hint_general}
$$

where:

- $\hat{\mathbf d}^{(j)}$ is the electric dipole operator of TLS $j$,
- $\hat{\boldsymbol\mu}^{(j)}$ is the magnetic dipole operator,
- $\mathbf r_j$ is the TLS position.

Total interaction is:

$$
H_{\mathrm{int}}=\sum_{j=D,A} H_{\mathrm{int}}^{(j)}.
\label{eq:Hint_sum}
$$

### 2.1 Identical TLS operators

For identical TLS, the transition operators have the same matrix elements, but geometry/projections can differ with position/orientation.

A common simplification is to take:

$$
\hat{\mathbf d}^{(j)} = \mathbf d\,(\sigma_+^{(j)}+\sigma_-^{(j)}) = \mathbf d\,\sigma_x^{(j)},
\qquad
\hat{\boldsymbol\mu}^{(j)} = \boldsymbol\mu\,(\sigma_+^{(j)}+\sigma_-^{(j)}) = \boldsymbol\mu\,\sigma_x^{(j)}.
\label{eq:dipole_ops}
$$

More generally, $\mathbf d$ and $\boldsymbol\mu$ can be complex vectors, but the structural results below remain the same.

---

## 3. One quantised mode: field operators and complex mode functions

For a **single mode**, the electric and magnetic field operators at position $\mathbf r$ can always be written as:

$$
\hat{\mathbf E}(\mathbf r)
=
\mathbf E_{\mathrm{zpf}}(\mathbf r)\,a + \mathbf E_{\mathrm{zpf}}^*(\mathbf r)\,a^\dagger,
\qquad
\hat{\mathbf B}(\mathbf r)
=
\mathbf B_{\mathrm{zpf}}(\mathbf r)\,a + \mathbf B_{\mathrm{zpf}}^*(\mathbf r)\,a^\dagger.
\label{eq:fields_single_mode}
$$

Here $\mathbf E_{\mathrm{zpf}}(\mathbf r)$ and $\mathbf B_{\mathrm{zpf}}(\mathbf r)$ are **complex vector-valued mode amplitudes** (including polarisation and spatial dependence), and “zpf” means “zero-point field”.

A travelling-wave-like mode often has:

$$
\mathbf E_{\mathrm{zpf}}(\mathbf r)\propto e^{i\mathbf k\cdot\mathbf r},\qquad
\mathbf B_{\mathrm{zpf}}(\mathbf r)\propto e^{i\mathbf k\cdot\mathbf r}.
\label{eq:travelling_mode_phase}
$$

A lossless standing-wave cavity mode can often be chosen real up to sign (so phases are $0$ or $\pi$).

---

## 4. The simplest case: **magnetic dipole only** (B-only)

Assume $\mathbf d = 0$ and only magnetic coupling:

$$
H_{\mathrm{int}}^{(j)}
=
-\hat{\boldsymbol\mu}^{(j)}\cdot \hat{\mathbf B}(\mathbf r_j).
\label{eq:Hint_Bonly_start}
$$

Insert Eqs. $\ref{eq:dipole_ops}$ and $\ref{eq:fields_single_mode}$:

$$
H_{\mathrm{int}}^{(j)}
=
-\sigma_x^{(j)}\Big[
\boldsymbol\mu\cdot \mathbf B_{\mathrm{zpf}}(\mathbf r_j)\,a
+
\boldsymbol\mu\cdot \mathbf B_{\mathrm{zpf}}^*(\mathbf r_j)\,a^\dagger
\Big].
\label{eq:Hint_Bonly_expand}
$$

Define the complex scalar coupling coefficient:

$$
g_j \equiv -\frac{1}{\hbar}\,\boldsymbol\mu\cdot \mathbf B_{\mathrm{zpf}}(\mathbf r_j),
\qquad
g_j^* = -\frac{1}{\hbar}\,\boldsymbol\mu\cdot \mathbf B_{\mathrm{zpf}}^*(\mathbf r_j).
\label{eq:gj_def}
$$

Then:

$$
H_{\mathrm{int}}^{(j)}
=
\hbar\,\sigma_x^{(j)}\big(g_j a + g_j^* a^\dagger\big).
\label{eq:Hint_Bonly_g}
$$

### 4.1 Writing the phase explicitly

Write $g_j$ in polar form:

$$
g_j = |g_j|e^{i\theta_j}.
\label{eq:gj_polar}
$$

Then:

$$
g_j a + g_j^* a^\dagger
=
|g_j|\big(e^{i\theta_j}a + e^{-i\theta_j}a^\dagger\big),
\label{eq:phase_factor_form}
$$

so:

$$
H_{\mathrm{int}}^{(j)}
=
\hbar |g_j|\,\sigma_x^{(j)}\big(e^{i\theta_j}a + e^{-i\theta_j}a^\dagger\big).
\label{eq:Hint_Bonly_phase}
$$

### 4.2 Where does $\theta_j$ come from?

It is simply:

$$
\theta_j = \arg\!\big(\boldsymbol\mu\cdot \mathbf B_{\mathrm{zpf}}(\mathbf r_j)\big).
\label{eq:theta_origin}
$$

For a travelling wave with $\mathbf B_{\mathrm{zpf}}(\mathbf r)\propto e^{i\mathbf k\cdot\mathbf r}$ and fixed polarisation,

$$
\theta_j \simeq \mathbf k\cdot \mathbf r_j + \text{(constant)}.
\label{eq:theta_travelling}
$$

---

## 5. Factoring out a global phase (why only relative phase matters)

The free Hamiltonian $\hbar\omega_c a^\dagger a$ is invariant under:

$$
a \to a\,e^{-i\chi},
\qquad
a^\dagger \to a^\dagger e^{i\chi}.
\label{eq:mode_rephase}
$$

This is a “phase convention” for the mode. Use it to make one emitter’s phase vanish.

Take $\chi=\theta_D$. Then donor’s factor becomes:

$$
e^{i\theta_D}a + e^{-i\theta_D}a^\dagger
\to
a + a^\dagger.
\label{eq:donor_phase_removed}
$$

Acceptor keeps only the **relative phase**:

$$
\Delta\phi \equiv \theta_A-\theta_D.
\label{eq:delta_phi_def}
$$

So the two-emitter B-only interaction can be written as:

$$
H_{\mathrm{int}}
=
\hbar |g_D|\sigma_x^{(D)}(a+a^\dagger)
+
\hbar |g_A|\sigma_x^{(A)}\big(e^{i\Delta\phi}a+e^{-i\Delta\phi}a^\dagger\big).
\label{eq:Hint_Bonly_final}
$$

---

## 6. When do you get a **nontrivial** relative phase $\Delta\phi$?

### 6.1 Travelling-wave / running-wave mode

If $\mathbf B_{\mathrm{zpf}}(\mathbf r)\propto e^{i\mathbf k\cdot\mathbf r}$ then:

$$
\Delta\phi = \mathbf k\cdot(\mathbf r_A-\mathbf r_D).
\label{eq:delta_phi_kdr}
$$

In 1D, $\Delta\phi = k(x_A-x_D)$, and $\Delta\phi=\pi/2$ corresponds to separation $\Delta x=\lambda/4$.

### 6.2 Ideal standing-wave cavity mode

If the mode function can be chosen real everywhere, then $g_j$ is real up to a sign, so:

- phases are typically $0$ or $\pi$,
- you cannot get a continuous $\Delta\phi$ unless you use a running-wave basis or the mode is intrinsically complex (lossy/open cavity, quasi-normal mode, etc.).

### 6.3 Extra ways to get complex spatial phase

Even for “one mode”, $\mathbf B_{\mathrm{zpf}}(\mathbf r)$ can be intrinsically complex in:

- leaky/open cavities (quasi-normal modes),
- waveguides/rings (naturally travelling-wave eigenmodes),
- strongly confined/evanescent structures where phase varies over shorter effective wavelengths.

---

## 7. Quadratures: what they are and why they appear

For one harmonic oscillator mode, define quadratures:

$$
X \equiv a+a^\dagger,
\qquad
P \equiv i(a^\dagger-a).
\label{eq:XP_def}
$$

A useful identity is:

$$
e^{i\phi}a + e^{-i\phi}a^\dagger
=
X\cos\phi + P\sin\phi.
\label{eq:quadrature_identity}
$$

So the “phase factor” form is exactly “a rotated quadrature”:

$$
X_\phi \equiv X\cos\phi + P\sin\phi.
\label{eq:rotated_quadrature}
$$

### 7.1 Important conceptual separation

- In the travelling-wave B-only case, $\Delta\phi$ comes from the **complex mode function** $e^{ikx}$.
- Rewriting it as quadratures via Eq. $\ref{eq:quadrature_identity}$ is **pure algebra**, not new physics.
- It does **not** mean the acceptor is coupling to $E$ instead of $B$.

---

## 8. Coupling to both $E$ and $B$ at a single point: how a quadrature angle arises *without spatial separation*

Now allow both dipoles:

$$
H_{\mathrm{int}}^{(j)}=
-\hat{\mathbf d}^{(j)}\cdot \hat{\mathbf E}(\mathbf r_j)
-\hat{\boldsymbol\mu}^{(j)}\cdot \hat{\mathbf B}(\mathbf r_j).
\label{eq:Hint_EB_start}
$$

At a single point, in many common quantisation conventions (notably those built from $\mathbf A$), one finds that for a single mode:

- $\hat{\mathbf B}(\mathbf r)$ is proportional to one quadrature (often $X$),
- $\hat{\mathbf E}(\mathbf r)$ is proportional to the orthogonal quadrature (often $P$).

A toy model is:

$$
\hat{\mathbf B}(\mathbf r_j)=\mathbf B_{\mathrm{zpf}}(\mathbf r_j)\,X,
\qquad
\hat{\mathbf E}(\mathbf r_j)=\mathbf E_{\mathrm{zpf}}(\mathbf r_j)\,P.
\label{eq:EB_as_quadratures}
$$

Project onto dipoles and define real scalar couplings:

$$
g_{B,j}\equiv \boldsymbol\mu\cdot \mathbf B_{\mathrm{zpf}}(\mathbf r_j),\qquad
g_{E,j}\equiv \mathbf d\cdot \mathbf E_{\mathrm{zpf}}(\mathbf r_j).
\label{eq:gE_gB_def}
$$

Then for TLS $j$:

$$
H_{\mathrm{int}}^{(j)} = -\sigma_x^{(j)}\big(g_{B,j}X + g_{E,j}P\big).
\label{eq:Hint_EB_XP}
$$

Now combine into one rotated quadrature using:

$$
V_j = \sqrt{g_{B,j}^2+g_{E,j}^2},\qquad
\phi_j=\arctan\!\left(\frac{g_{E,j}}{g_{B,j}}\right),
\label{eq:V_phi_def}
$$

giving:

$$
g_{B,j}X + g_{E,j}P
=
V_j\big(X\cos\phi_j + P\sin\phi_j\big)
=
V_j\big(e^{i\phi_j}a + e^{-i\phi_j}a^\dagger\big).
\label{eq:EB_to_phase}
$$

So:

$$
H_{\mathrm{int}}^{(j)}
=
- V_j\,\sigma_x^{(j)}\big(e^{i\phi_j}a + e^{-i\phi_j}a^\dagger\big).
\label{eq:Hint_EB_phase}
$$

### 8.1 What is the meaning of $\phi_j$ here?

It is the **quadrature angle** selected by the ratio of electric to magnetic coupling at that point:

- $g_{E,j}=0 \Rightarrow \phi_j=0$ (pure $X$ coupling),
- $g_{B,j}=0 \Rightarrow \phi_j=\pi/2$ (pure $P$ coupling),
- both nonzero $\Rightarrow$ rotated quadrature.

### 8.2 Does this produce a *relative* phase between two identical TLS?

If the TLS are identical and sit in identical conditions, they have the same $g_{E}/g_{B}$, hence the same $\phi_j$. In that case, a global rephasing can remove the common phase from both simultaneously.

A relative phase arises only if:

$$
\phi_A \neq \phi_D,
\label{eq:relative_phase_condition}
$$

which requires a difference in:

- position-dependent field ratios $E_{\mathrm{zpf}}(\mathbf r)/B_{\mathrm{zpf}}(\mathbf r)$,
- orientation/projection of dipoles on local polarisation,
- or (more exotic) intrinsic complex relative phase between electric and magnetic transition moments.

---

## 9. Combining both mechanisms (general picture)

In the most general single-mode case, each emitter’s interaction can be written as:

$$
H_{\mathrm{int}}^{(j)}
=
\hbar\,\sigma_x^{(j)}\Big(\alpha_j a + \alpha_j^* a^\dagger\Big),
\label{eq:alpha_general}
$$

where the complex coefficient $\alpha_j$ contains *everything*:

- electric contribution via $\mathbf E_{\mathrm{zpf}}(\mathbf r_j)$ and $\mathbf d$,
- magnetic contribution via $\mathbf B_{\mathrm{zpf}}(\mathbf r_j)$ and $\boldsymbol\mu$,
- spatial dependence (e.g. $e^{i\mathbf k\cdot\mathbf r_j}$),
- polarisation/projection factors.

Write $\alpha_j = |\alpha_j|e^{i\theta_j}$ and you get:

$$
H_{\mathrm{int}}^{(j)}
=
\hbar|\alpha_j|\sigma_x^{(j)}\big(e^{i\theta_j}a + e^{-i\theta_j}a^\dagger\big).
\label{eq:alpha_phase}
$$

Then only the **relative phase** $\Delta\phi=\theta_A-\theta_D$ survives after choosing the mode phase convention.

---

## 10. What is physically observable about these phases?

### 10.1 Global phase is not observable in the single-mode Hamiltonian

You can always choose the phase of $a$ to remove one emitter’s phase entirely. That’s why the literature often writes the donor with $(a+a^\dagger)$ and puts the phase on the acceptor.

### 10.2 Relative phase becomes meaningful when there is interference

A relative phase matters when the physics compares “paths” or “collective combinations”, e.g.:

- superradiant vs subradiant (bright/dark) collective states in two-emitter coupling,
- direct donor–acceptor coupling terms,
- multiple modes / continuum (propagation and retardation),
- coherent drives with a fixed phase reference.

Even in a single-mode model, the relative phase influences which collective TLS superposition couples most strongly to the field.

---

## 11. Summary “rules of thumb”

- **Single travelling wave**: $E$ and $B$ are in phase in time for that wave.
- **Standing wave**: locally, $E$ and $B$ are often $\pi/2$ out of phase in time (energy sloshing).
- **B-only coupling**: phases arise from the complex spatial mode function $u(\mathbf r)$ (e.g. $e^{ikx}$).
- **E + B coupling**: even at one point, the TLS couples to a linear combination of quadratures; this is a “quadrature rotation” with angle $\phi=\arctan(g_E/g_B)$.
- **Global phase** can be removed by redefining $a$; only **relative phase** between emitters or channels matters.
- **Relative phase difference** requires emitters to experience different complex coefficients: either different spatial phase (travelling wave) or different $g_E/g_B$ ratio (varying geometry/orientation/field ratios).

---

## 12. Minimal “canonical forms” to remember

### 12.1 B-only (travelling wave)

$$
H_{\mathrm{int}}
=
\hbar\sum_{j=D,A}\sigma_x^{(j)}\big(g_0 e^{i\mathbf k\cdot\mathbf r_j}a + g_0 e^{-i\mathbf k\cdot\mathbf r_j}a^\dagger\big).
\label{eq:canonical_Bonly}
$$

After gauging away the donor phase:

$$
H_{\mathrm{int}}
=
\hbar g_0\sigma_x^{(D)}(a+a^\dagger)
+
\hbar g_0\sigma_x^{(A)}\big(e^{i\Delta\phi}a+e^{-i\Delta\phi}a^\dagger\big),
\quad
\Delta\phi=\mathbf k\cdot(\mathbf r_A-\mathbf r_D).
\label{eq:canonical_Bonly_relative}
$$

### 12.2 E + B at one point (quadrature rotation)

$$
H_{\mathrm{int}}^{(j)} = -\sigma_x^{(j)}\big(g_{B,j}X + g_{E,j}P\big)
= -V_j\sigma_x^{(j)}\big(e^{i\phi_j}a+e^{-i\phi_j}a^\dagger\big),
\quad
\phi_j=\arctan\!\left(\frac{g_{E,j}}{g_{B,j}}\right).
\label{eq:canonical_EB_rotation}
$$

---

