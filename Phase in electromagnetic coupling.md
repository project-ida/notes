# Phase in electomagnetic coupling

These notes build a clean toy-model Hamiltonian for two identical two-level systems (TLS) coupled to a single quantised electromagnetic (EM) mode, focusing on:

- How to write the interaction for **electric** and **magnetic** dipole transitions.
- Why and how **phase factors** like $e^{\pm i\phi}$ appear in cavity/waveguide Hamiltonians.
- The difference between:
  - **spatial phase** (from $e^{ikx}$ in a travelling wave), and
  - **quadrature rotation** (coupling to $X$ vs $P$ of the oscillator).
- A conceptual clarification of “phase” in EM waves (travelling vs standing waves).

Throughout, we use a *single mode* (one harmonic oscillator) and two TLS labelled donor $D$ and acceptor $A$.

---

## The basic ingredients

### TLS Hamiltonian

For TLS $j\in\{D,A\}$ with transition frequency $\omega_j$,

$$
H_{\mathrm{TLS}}=\sum_{j=D,A}\frac{\hbar\omega_j}{2}\,\sigma_z^{(j)}. \label{eq:HTLS}
$$

- $\sigma_z^{(j)}$ is the Pauli $z$ operator acting on TLS $j$.
- $\sigma_\pm^{(j)}$ are raising/lowering operators, with $\sigma_x^{(j)}=\sigma_+^{(j)}+\sigma_-^{(j)}$.

### Single quantised mode Hamiltonian

One EM mode of frequency $\omega_c$ is described by bosonic operators $a,a^\dagger$:

$$
H_{\mathrm{mode}}=\hbar\omega_c\,a^\dagger a. \label{eq:Hmode}
$$

Total free Hamiltonian:

$$
H_0 = H_{\mathrm{mode}} + H_{\mathrm{TLS}}. \label{eq:H0}
$$

---

## Dipole interactions: the starting point

A TLS transition can couple to:

- the **electric field** via an electric transition dipole $\hat{\mathbf d}$, and/or
- the **magnetic field** via a magnetic transition dipole $\hat{\boldsymbol\mu}$.

In the dipole approximation, at the TLS position $\mathbf r_j$:

$$
H_{\mathrm{int}}
=
-\sum_{j=D,A}
\left(
\hat{\mathbf d}^{(j)}\cdot\hat{\mathbf E}(\mathbf r_j)
+
\hat{\boldsymbol\mu}^{(j)}\cdot\hat{\mathbf B}(\mathbf r_j)
\right). \label{eq:Hint_general}
$$

### Transition operators (minimal, aligned case)

To keep the algebra transparent, assume each transition dipole is aligned with the local field polarisation so dot products reduce to scalars:

- $\hat d^{(j)} = d\,\sigma_x^{(j)}$
- $\hat\mu^{(j)} = \mu\,\sigma_x^{(j)}$

Then Eq. $\ref{eq:Hint_general}$ becomes

$$
H_{\mathrm{int}}
=
-\sum_{j=D,A}
\sigma_x^{(j)}
\left(
d\,\hat E(\mathbf r_j)
+
\mu\,\hat B(\mathbf r_j)
\right). \label{eq:Hint_scalar}
$$

(General vector/complex matrix-element versions give the same structure but with additional projection factors and complex conjugation; the key ideas below do not rely on the simplification.)

---

## Quantising the fields for a single mode

A single mode at position $\mathbf r$ can always be written as

$$
\hat{\mathbf E}(\mathbf r) = \mathbf E_{\mathrm{zpf}}(\mathbf r)\,a + \mathbf E_{\mathrm{zpf}}^*(\mathbf r)\,a^\dagger, \qquad
\hat{\mathbf B}(\mathbf r) = \mathbf B_{\mathrm{zpf}}(\mathbf r)\,a + \mathbf B_{\mathrm{zpf}}^*(\mathbf r)\,a^\dagger. \label{eq:fields_singlemode}
$$

- “zpf” means zero-point field amplitude (including polarisation and spatial mode function).
- The complex nature of $\mathbf E_{\mathrm{zpf}}(\mathbf r)$ or $\mathbf B_{\mathrm{zpf}}(\mathbf r)$ is exactly where phase factors come from.

A useful scalar shorthand at each TLS position is:

$$
\hat B(\mathbf r_j)= B_{\mathrm{zpf}}\big(u_j a + u_j^* a^\dagger\big), \qquad
u_j \equiv \text{(complex mode factor at } \mathbf r_j\text{)}. \label{eq:Bmodefactor}
$$

Write $u_j=|u_j|e^{i\theta_j}$:

$$
u_j a + u_j^* a^\dagger
=
|u_j|\left(e^{i\theta_j}a+e^{-i\theta_j}a^\dagger\right). \label{eq:phaseform}
$$

This algebraic form is the origin of Hamiltonians containing $(e^{i\phi}a+e^{-i\phi}a^\dagger)$.

---

## Phase factors from spatial separation in a travelling wave (B-only)

### Travelling-wave mode function

For a running (travelling) wave along $x$, a standard mode factor is

$$
u(x)=e^{ikx}. \label{eq:ux}
$$

Then the magnetic field operator is

$$
\hat B(x)=B_{\mathrm{zpf}}\left(e^{ikx}a+e^{-ikx}a^\dagger\right). \label{eq:Btravel}
$$

### Two identical TLS at positions $x_D$ and $x_A$

Insert Eq. $\ref{eq:Btravel}$ into the magnetic-only part of Eq. $\ref{eq:Hint_scalar}$ (set $d=0$):

$$
H_{\mathrm{int}}^{(B)}
=
-\mu B_{\mathrm{zpf}}
\sum_{j=D,A}
\sigma_x^{(j)}
\left(e^{ikx_j}a+e^{-ikx_j}a^\dagger\right). \label{eq:Hint_Btravel}
$$

Define the couplings $V_j\equiv \mu B_{\mathrm{zpf}}$ (or include $|u(x_j)|$ if the mode has spatial envelope). Then

$$
H_{\mathrm{int}}^{(B)}
=
-\sum_{j=D,A}
V_j\,\sigma_x^{(j)}
\left(e^{ikx_j}a+e^{-ikx_j}a^\dagger\right). \label{eq:Hint_Btravel2}
$$

### Only the relative phase matters

You can rephase the oscillator without changing $H_{\mathrm{mode}}$:

- Transform $a \rightarrow a\,e^{-ikx_D}$ (and $a^\dagger \rightarrow a^\dagger e^{ikx_D}$).

This makes the donor term purely $(a+a^\dagger)$, and the acceptor term keeps the **relative** phase

$$
\Delta\phi = k(x_A-x_D). \label{eq:deltaphi}
$$

So you obtain the familiar-looking structure

$$
H_{\mathrm{int}}^{(B)}
=
-(a+a^\dagger)\,V_D\,\sigma_x^{(D)}
-
\left(e^{i\Delta\phi}a+e^{-i\Delta\phi}a^\dagger\right)\,V_A\,\sigma_x^{(A)}. \label{eq:Hint_phasefactor}
$$

**Key point:** in this B-only travelling-wave case, $\Delta\phi$ is simply the **spatial phase** sampled by the two TLS.

### Special case: $\lambda/4$ separation

If $x_A-x_D=\lambda/4$, then $k(x_A-x_D)=2\pi(\lambda/4)/\lambda=\pi/2$, so $\Delta\phi=\pi/2$.

This is the cleanest route to a $\pi/2$ factor with B-only coupling: a travelling wave and a quarter-wavelength separation.

---

## Common confusion: is this “E vs B quadratures”?

### The simple answer

- In the travelling-wave, B-only story above, the phase $\Delta\phi$ comes from **$e^{ikx}$**, i.e. different complex amplitudes at different positions.
- Writing $(e^{i\Delta\phi}a+e^{-i\Delta\phi}a^\dagger)$ as a “rotated quadrature” is **just a re-expression** of that same spatial phase.

There is no need to invoke electric coupling to explain the B-only relative phase.

---

## Quadratures: what the $e^{\pm i\phi}$ combination really means

Define oscillator quadratures

$$
X \equiv a+a^\dagger, \qquad P \equiv i(a^\dagger-a). \label{eq:XP}
$$

Then the identity

$$
e^{i\phi}a+e^{-i\phi}a^\dagger
=
X\cos\phi + P\sin\phi \label{eq:rotated_quadrature}
$$

shows that $(e^{i\phi}a+e^{-i\phi}a^\dagger)$ is a **rotated quadrature**.

### What does $\phi=\pi/2$ mean?

Set $\phi=\pi/2$ in Eq. $\ref{eq:rotated_quadrature}$:

$$
e^{i\pi/2}a+e^{-i\pi/2}a^\dagger
=
P \times (\text{sign}). \label{eq:phi_pi_over_2}
$$

So “$\pi/2$ in the Hamiltonian” is shorthand for “coupling to the orthogonal quadrature”.

In the travelling-wave case, that orthogonal-quadrature appearance is simply because sampling the mode at $x=\lambda/4$ rotates the combination of $a$ and $a^\dagger$.

---

## How coupling to both E and B rotates the quadrature at a single point

This is a different mechanism: it can produce an effective phase angle even without spatial separation.

### Step 1: In one common convention, $E$ and $B$ correspond to different quadratures

A standard quantisation choice uses the vector potential $\hat{\mathbf A}\propto X$, then:

- $\hat{\mathbf B}=\nabla\times\hat{\mathbf A}\propto X$
- $\hat{\mathbf E}=-\partial_t\hat{\mathbf A}\propto P$

At a fixed position $\mathbf r_0$ (suppress vector details):

$$
\hat E(\mathbf r_0)=E_{\mathrm{zpf}}\,P, \qquad
\hat B(\mathbf r_0)=B_{\mathrm{zpf}}\,X. \label{eq:EB_quadratures}
$$

### Step 2: Couple a single TLS to both

Use Eq. $\ref{eq:Hint_scalar}$ at $\mathbf r_0$:

$$
H_{\mathrm{int}}(\mathbf r_0)
=
-\sigma_x\left(d\,\hat E(\mathbf r_0)+\mu\,\hat B(\mathbf r_0)\right). \label{eq:Hint_singlepoint}
$$

Insert Eq. $\ref{eq:EB_quadratures}$:

$$
H_{\mathrm{int}}(\mathbf r_0)
=
-\sigma_x\left(g_E\,P + g_B\,X\right), \label{eq:Hint_XP}
$$

where

- $g_E \equiv d E_{\mathrm{zpf}}$
- $g_B \equiv \mu B_{\mathrm{zpf}}$

### Step 3: Rewrite as a rotated quadrature

Define

$$
V=\sqrt{g_B^2+g_E^2}, \qquad
\phi=\arctan\left(\frac{g_E}{g_B}\right). \label{eq:Vphi}
$$

Then

$$
g_B X + g_E P = V\left(X\cos\phi + P\sin\phi\right). \label{eq:combine_XP}
$$

Using Eq. $\ref{eq:rotated_quadrature}$:

$$
H_{\mathrm{int}}(\mathbf r_0)
=
- V\,\sigma_x\left(e^{i\phi}a+e^{-i\phi}a^\dagger\right). \label{eq:Hint_rotated}
$$

**Interpretation:** coupling to both $E$ and $B$ gives two independent linear couplings to the same oscillator, hence a rotated quadrature.

### Important caveat (identical TLS at the same point)

If two TLS are identical and co-located (and oriented the same way), they have the same ratio $g_E/g_B$ and therefore the same $\phi$. In that case:

- there is no *relative* phase between them arising from this mechanism alone,
- you can rephase the mode to remove the common $\phi$ from both simultaneously.

To get a *relative* phase from this mechanism, something must make $g_E/g_B$ differ between the TLS (different position in a standing wave where $E$ and $B$ vary differently, different orientation, etc.).

---

## Conceptual interlude: are $E$ and $B$ “in phase” by Maxwell?

A major conceptual hurdle is distinguishing:

- **travelling waves** (propagating plane waves), and
- **standing waves** (superpositions of counter-propagating waves, e.g. cavity modes).

### Travelling plane wave: $E$ and $B$ are in phase

A standard vacuum plane wave propagating in $+x$:

$$
E_y(x,t)=E_0\cos(kx-\omega t), \qquad
B_z(x,t)=\frac{E_0}{c}\cos(kx-\omega t). \label{eq:plane_inphase}
$$

At fixed $x$, the maxima/minima occur at the same times: no relative $\pi/2$ time shift.

A compact statement in complex-amplitude form is:

$$
\mathbf B_0=\frac{1}{\omega}\,\mathbf k\times \mathbf E_0, \label{eq:B0kE0}
$$

so both share the same space–time factor $e^{i(\mathbf k\cdot\mathbf r-\omega t)}$.

### Why the magnetic field “subtracts” in a standing-wave construction

A standing wave is built from two travelling waves of opposite propagation direction. For the same $E$ polarisation, reversing propagation flips the sign of $B$ because

- $\mathbf B \propto \hat{\mathbf k}\times \mathbf E$,
- $\hat{\mathbf k}\rightarrow -\hat{\mathbf k}$ implies $\mathbf B\rightarrow -\mathbf B$.

This is why, when you add counter-propagating waves, the $E$ fields add but the $B$ fields subtract.

### Standing wave: $E$ and $B$ can be $\pi/2$ out of phase in time at a point

Adding the two waves yields (one common form):

$$
E_y(x,t)=2E_0\cos(kx)\cos(\omega t), \qquad
B_z(x,t)=2\frac{E_0}{c}\sin(kx)\sin(\omega t). \label{eq:standing_quadrature}
$$

At a fixed $x$ where both $\cos(kx)$ and $\sin(kx)$ are nonzero:

- $E\propto \cos(\omega t)$
- $B\propto \sin(\omega t)$

This is a genuine $\pi/2$ time shift.

### Common confusion: “cos vs sin means $\pi/2$”

- Yes: $\sin(\omega t)=\cos(\omega t-\pi/2)$.
- But you must compare **two signals with the same argument** at the same location/time origin.

In a travelling wave, you can write both $E$ and $B$ using $\cos(kx-\omega t)$ (or both using $\sin$) consistently; switching $\cos \leftrightarrow \sin$ for one but not the other would correspond to shifting reference phase for one field only, which is not the physical plane-wave relation.

---

## Putting it all together: what “phase” means in the Hamiltonian

There are two distinct (but algebraically similar) appearances of phases:

### 1) Spatial phase (travelling wave, even with B-only)

- The mode function has $u(x)=e^{ikx}$.
- Different TLS positions sample different complex coefficients.
- This yields a relative phase $\Delta\phi=k(x_A-x_D)$ in the coupling, Eq. $\ref{eq:deltaphi}$.
- $\lambda/4$ separation gives $\Delta\phi=\pi/2$.

### 2) Quadrature rotation (coupling to both E and B at one point)

- In a common quantisation convention, $B\sim X$ and $E\sim P$.
- Coupling to both gives $g_BX+g_EP=V(X\cos\phi+P\sin\phi)$ with $\phi=\arctan(g_E/g_B)$.
- This produces an $e^{\pm i\phi}$ structure even without spatial separation, Eq. $\ref{eq:Hint_rotated}$.
- For identical TLS at the same point, this does not create a relative phase by itself.

---

## Takeaways

- A travelling-wave spatial mode $u(x)=e^{ikx}$ gives **position-dependent complex coupling**; the relative phase is $\Delta\phi=k\Delta x$ (Eq. $\ref{eq:deltaphi}$).
- A $\pi/2$ phase factor in $(e^{i\phi}a+e^{-i\phi}a^\dagger)$ corresponds to coupling to the **orthogonal oscillator quadrature** (Eq. $\ref{eq:rotated_quadrature}$).
- With **B-only coupling**, a $\pi/2$ *relative* phase arises cleanly from **$\lambda/4$ spatial separation** in a travelling wave (Eq. $\ref{eq:Hint_phasefactor}$).
- Coupling to both **E and B** at a single point yields a **quadrature rotation** with $\phi=\arctan(g_E/g_B)$ (Eq. $\ref{eq:Vphi}$), even without spatial separation.
- Maxwell’s equations allow $E$ and $B$ to be **in phase in travelling waves** (Eq. $\ref{eq:plane_inphase}$) but often **$\pi/2$ out of phase in standing waves** (Eq. $\ref{eq:standing_quadrature}$).

