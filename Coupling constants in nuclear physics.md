---
author: "Matt Lilley"
---

# Introduction

Understanding the interaction between nucleons and external fields is essential in nuclear physics. We'll explore two coupling mechanisms that arise in quantum nuclear interactions:

1. **Relativistic phonon nuclear coupling ($a \cdot cp$)** – where phonons couple to nucleons through momentum exchange.
2. **Electric dipole coupling ($d \cdot E$)** – where an electric field couples to nucleons through dipole moments.

This document explores both couplings, derives their respective coupling constants, and compares their strength.

# Relativistic phonon nuclear coupling ($a \cdot cp$)

## $p$ in $a \cdot cp$

For a nucleus of mass $M$ moving within a solid, the momentum-based coupling energy scales as:

$$
E \sim p c 
$$

From kinetic energy considerations:

$$
\frac{p^2}{2M} = E \quad \Rightarrow \quad p = \sqrt{2ME}
$$

If $E$ represents phonon oscillations:

$$
E = n \hbar \omega_A 
$$

where $n$ is the phonon occupation number. Distributing this energy over $N$ atoms:

$$
p = \sqrt{\frac{2M}{N}} \sqrt{\hbar \omega_A} \sqrt{n} \label{eq:p}
$$

Note that later we'll drop the $\sqrt{n}$ because it should be picked up in the Hamiltonian operator $(b^{\dagger} + b)$.

## $a$ in $a \cdot cp$

From Eq. 470 in section 6.11 of [Models for nuclear fusion in the solid state](https://arxiv.org/pdf/2501.08338), the $a$ component of $a \cdot cp$ can be approximated as:

$$
a \sim \frac{1}{2} \frac{\Delta E}{M c^2} \frac{\pi}{m c}
$$

where:
- $\Delta E$ is the nuclear transition energy,
- $m$ is the mass of a single nucleon within the nucleus,
- $\pi$ represents the relative momentum of that nucleon.

Since angular momentum is approximately $\hbar$, and using the Fermi scale $l_F = 10^{-15}$ m, we estimate:

$$
\pi \sim \frac{\hbar}{l_F} 
$$

Substituting this into the expression for $a$ gives:

$$
a \sim \frac{1}{2} \frac{\Delta E}{M c^2} \frac{\bar\lambda_c}{l_F} 
$$

where $\bar\lambda_c = \hbar / m c$ is the reduced Compton wavelength, approximately:

$$
\bar\lambda_c \approx 2 \times 10^{-16} \text{ m}. 
$$

To account for hindrance effects in nuclear transitions, we introduce a suppression factor $O$, where $O \sim 0.01$. This modifies the expression to:

$$
a \sim \frac{1}{2} \frac{\Delta E}{M c^2} \frac{\bar\lambda_c}{l_F} O 
$$

which simplifies to:

$$
a \sim \frac{\Delta E}{M c^2} \times 10^{-3} 
\label{eq:a}
$$

The final value of $a$ depends on both the nuclear transition type and the specific nucleus under consideration.

## Overall coupling constant

If we use this simple Hamiltonian in which a single TLS interacts with a single phonon mode:

$$
H = \frac{\Delta E}{2} \sigma_z + \hbar\omega_A\left(a^{\dagger}a +\frac{1}{2}\right) + U\left( b^{\dagger} + b \right)\sigma_x
$$

then an $a \cdot cp$ coupling constant $U$ can be defined by combining Eq. $\ref{eq:p}$ (without the $\sqrt{n}$) with Eq. $\ref{eq:a}$:

$$
U = c \sqrt{\frac{2M}{N}} \sqrt{\hbar \omega_A} \times \frac{\Delta E}{M c^2} \times 10^{-3}
$$

Normalising $U$ to $\hbar \omega_A$ gives:

$$
\frac{U}{\hbar \omega_A} = \sqrt{\frac{2M c^2}{N}} \frac{1}{\sqrt{\hbar \omega_A}} \times \frac{\Delta E}{M c^2} \times 10^{-3}
$$

Rearranging and simplifying leads to:

$$
\frac{U}{\hbar \omega_A} = \sqrt{\frac{2}{N}} \sqrt{\frac{\Delta E}{M c^2}} \sqrt{\frac{\Delta E}{\hbar \omega_A}} \times 10^{-3}
$$

which can also be written as:

$$
\frac{U}{\hbar \omega_A} = \sqrt{\frac{2}{N}} \sqrt{\frac{\hbar \omega_A}{M c^2}} \frac{\Delta E}{\hbar \omega_A} \times 10^{-3}
$$

## Example for palladium with acoustic phonons

- $\Delta E \approx 24 \times 10^{6}$ eV  
- $M c^2 \approx 10^{11}$ eV  
- $\hbar \omega_A \approx 10^{-8}$ eV  
- $N \approx 10^{18}$  

$$
\frac{U}{\hbar \omega_A} \approx \sqrt{\frac{2}{10^{18}}} \sqrt{\frac{24 \times 10^6}{10^{11}}} \sqrt{\frac{24 \times 10^6}{10^{-8}}} \times 10^{-3}
$$

$$
\approx 10^{-6}
$$

Based on this, we are far away from the deep strong coupling regime (where $U/\hbar \omega_A > 1$).

## Dicke enhancement

For an ensemble of $N$ nuclei interacting collectively with a phonon field, coupling is enhanced by $\sqrt{N}$, leading to:

$$
\frac{U}{\hbar \omega_A} \sim 10^{3}
$$

which places the system into the deep strong coupling regime.

# Electric dipole coupling (E1 transitions)

## $E$ in $d \cdot E$

Electric field strength due to phonons follows from force relations:

$$
F = \frac{dp}{dt} = ZeE
$$

For oscillatory motion:

$$
\frac{dp}{dt} \sim \omega_A p \Rightarrow E = \frac{\omega_A p}{Ze}
$$

Substituting our previous result for $p$:

$$
E = \frac{\omega_A \sqrt{2M \hbar \omega_A n}}{Ze \sqrt{N}} \label{eq:E}
$$

## $d$ in $d \cdot E$

We can connect two key expressions related to dipole interactions:

1. Radiation from a dipole – describes how an oscillating dipole emits radiation.  
2. Radiative decay rates from Weisskopf – provides an estimate for transition rates.

### Radiation from a dipole

The radiative decay rate due to dipole radiation is given by:

$$
\gamma_{\text{rad}} = \frac{4}{3} \frac{1}{4 \pi \epsilon_0 \hbar} \frac{\omega^3}{c^3} d^2
$$

Rewriting in terms of the fine-structure constant $\alpha$:

$$
\gamma_{\text{rad}} = \frac{4}{3} \frac{1}{e^2} \alpha \frac{\omega^3}{c^2} d^2
$$

where the fine-structure constant is defined as:

$$
\alpha = \frac{e^2}{4\pi \epsilon_0 \hbar c}
$$

### Weisskopf estimate for E1 transition

Weisskopf's formula for radiative decay is given by ([Eq. 16.35 of Bielajew's book](https://public.websites.umich.edu/~ners311/CourseLibrary/bookchapter16.pdf#page=14) or [Eq. A.190 of Dommelen's book](http://www.dommelen.net/quantum2/style_a/nt_weis.html#SECTION091258000000000000000)):

$$
\gamma_{\text{rad}} = \frac{8\pi (L+1)}{L \left[(2L+1)!!\right]^2} \alpha (kR)^{2L} \omega \left( \frac{3}{L+3} \right)^2
$$

where:
- $L$ is the multipolarity ($L=1$ for dipole, $L=2$ for quadrupole).
- $k$ is the wavenumber of the emitted radiation.
- $R$ is the nuclear radius, given by:

$$
R = R_0 A^{1/3}
$$

where $R_0$ is the radius of a single nucleon and $A$ is the number of nucleons. Note that there exist other forms of Weisskopf's formula that are [more convenient for numerical evaluation](http://www.dommelen.net/quantum2/style_a/ntgd.html#SECTION086204000000000000000) but they obscure the physical constants.

For a dipole transition ($L=1$), this simplifies to:

$$
\gamma_{\text{rad}} = \frac{8\pi \times 2}{1 \times [3!!]^2} \alpha \frac{\omega^2}{c^2} R_0^2 A^{2/3} \omega \left(\frac{3}{4} \right)^2
$$

Rewriting more compactly:

$$
\gamma_{\text{rad}} = \frac{9\pi}{(3!!)^2} \alpha \frac{\omega^3}{c^2} R_0^2 A^{2/3}
$$

### Equating the two expressions

From the previous derivations, we equate:

$$
\frac{9\pi}{(3!!)^2} \alpha \frac{\omega^3}{c^2} R_0^2 A^{2/3} = \frac{4}{3} \frac{1}{e^2} \alpha \frac{\omega^3}{c^2} d^2
$$

Rearranging:

$$
\frac{27\pi}{4 \times (3!!)^2} A^{2/3} e^2 R_0^2 = d^2
$$

Taking the square root:

$$
d = \frac{\sqrt{27\pi}}{2 \times (3!!)} A^{1/3} e R_0
$$

which simplifies to:

$$
d = \frac{\sqrt{27\pi}}{1440} A^{1/3} e R_0
$$

Approximating numerically:

$$
d \approx 6 \times 10^{-3} A^{1/3} e R_0 \label{eq:d}
$$

## Overall coupling constant

If we again use this simple Hamiltonian in which a single TLS interacts with a single phonon mode:

$$
H = \frac{\Delta E}{2} \sigma_z + \hbar\omega_A\left(a^{\dagger}a +\frac{1}{2}\right) + U\left( b^{\dagger} + b \right)\sigma_x
$$

then a $d \cdot E$ coupling constant $U$ can be defined by combining Eq. $\ref{eq:E}$ (without the $\sqrt{n}$) with Eq. $\ref{eq:d}$:

$$
\frac{U}{\hbar \omega_A} = \frac{1}{\hbar \omega_A} \frac{\omega_A \sqrt{2M \hbar \omega_A}}{Ze \sqrt{N}} \times 6 \times 10^{-3} A^{1/3} e R_0
$$

Rearranging,

$$
\frac{U}{\hbar \omega_A} = \frac{\sqrt{2}}{Z \sqrt{N}} \sqrt{\frac{M c^2}{\hbar \omega_A}} \frac{\hbar \omega_A R_0}{\hbar c} A^{1/3} \times 6 \times 10^{-3}
$$

We recognize $\hbar c / R_0$ as the localization energy of a nucleon, which we call $E_L$. Thus, we obtain:

$$
\frac{U}{\hbar \omega_A} = \frac{2\pi\sqrt{2}}{Z \sqrt{N}} \sqrt{\frac{M c^2}{\hbar \omega_A}} \frac{\hbar \omega_A}{E_L} A^{1/3} \times 6 \times 10^{-3}
$$

which can also be written as:

$$
\frac{U}{\hbar \omega_A} = \frac{2\pi\sqrt{2}}{Z \sqrt{N}} \sqrt{\frac{M c^2}{E_L}} \sqrt{\frac{\hbar \omega_A}{E_L}} A^{1/3} \times 6 \times 10^{-3}
$$

Note how the expressions for $a \cdot cp$ and $d \cdot E$ have an interesting reciprocal relationship if we see that $E_L$ plays the role of $\Delta E$.

## Example of Pd with Acoustic Phonons

Given:
- $A \approx 106$
- $N \approx 10^{18}$
- $Z \approx 106$
- $M c^2 \approx 10^{11}$ eV
- $\hbar \omega_A \approx 10^{-8}$ eV

First, let's calculate the localization energy:

$$
E_L = \frac{\hbar c}{R_0} = \frac{6.6 \times 10^{-34} \times 3 \times 10^8}{10^{-15}}
$$

$$
= 2 \times 10^{-10} \text{ J} = 1.2 \times 10^9 \text{ eV} \approx 10^9 \text{ eV}
$$

Now, substituting these numbers gives:

$$
\frac{U}{\hbar \omega_A} \approx \frac{2 \pi\sqrt{2} }{106 \times 10^9} \times \sqrt{\frac{10^{11}}{10^{-8}}} \times \frac{10^{-8}}{10^9} \times 6 \times 10^{-3} \times 106^{1/3}
$$

Approximating:

$$
\approx \frac{ 2 \pi \sqrt{2} \sqrt{10}}{106 \times 10^9} \times 10^9 \times 10^{-17} \times 6 \times 10^{-3} \times 106^{1/3}
$$

$$
\approx 8\pi \times 6 \times 10^{-20} \times 106^{-2/3}
$$

$$
\approx 7 \times 10^{-20}
$$

## Dicke enhancement

For an ensemble of $N$ nuclei interacting collectively with a phonon field, coupling is enhanced by $\sqrt{N}$, leading to:

$$
\frac{U}{\hbar \omega_A} \sim 7 \times 10^{-11}
$$

and so even with Dicke enhancement, dipole coupling remains in the weak coupling regime. 

