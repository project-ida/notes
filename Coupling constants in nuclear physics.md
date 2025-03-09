---
author: "Matt Lilley"
---

# Introduction

Understanding the interaction between nucleons and external fields is essential in nuclear physics. We'll explore two coupling mechanisms that arise in quantum nuclear interactions:

1. **Relativistic phonon nuclear coupling ($a \cdot cp$)** – where phonons couple to nucleons through momentum exchange (see [Hagelstein 2023](https://iopscience.iop.org/article/10.1088/1361-6455/acf3be) for more detail).
2. **Electric dipole coupling ($d \cdot E$)** – where an electric field couples to nucleons through electric dipole moments.
3. **Magnetic dipole coupling  ($\mu \cdot B$)** - where a magnetic field couples to nucleonics through magnetic dipole moments.

This document explores these couplings, derives their respective coupling constants, and compares their strength.

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

Let's consider a single TLS interacts with a single phonon mode. The Hamiltonian can be written as:

$$
H = \frac{\Delta E}{2} \sigma_z + \hbar\omega_A\left(b^{\dagger}b +\frac{1}{2}\right) + U\left( b^{\dagger} + b \right)\sigma_x
$$

where $\Delta E$ is the transition energy between the 2 levels of the TLS, $\hbar\omega_A$ is the energy of each quantum of the field, and $U$ is the coupling constant between the TLS and the field. The $\sigma$ operators are the Pauli matrices and $b^{\dagger}$, $b$ are the field creation and annihilation operators respectively. Note that usually $a$ is used for the field operators, but in these notes we use $b$ to avoid confusion with $a \cdot cp$ .

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

## Dicke enhancement

For an ensemble of $N$ nuclei interacting collectively with a phonon field, coupling is enhanced by $\sqrt{N}$, leading to:

$$
\frac{U}{\hbar \omega_A} \sim 10^{3}
$$

Based on this, we can be far into the "deep strong coupling" regime where $U/\hbar \omega_A > 1$.

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

We can connect two key expressions related to electric dipole interactions:

1. Radiation from an electric dipole – describes how an oscillating electric dipole emits radiation.  
2. Radiative decay rates from Weisskopf – provides an estimate for transition rates.

### Radiation from an electric dipole

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

# Magnetic dipole coupling (M1 transitions)

## $B$ in $\mu\cdot B$

We assume there is an externally driven oscillatory magnetic field $B$ with frequency $\omega$ in some volume V. Since field energy density $\sim \mu_0B^2$ then:
$$
\frac{1}{\mu_0} B^2 V = n\hbar\omega
$$
where $n$ is the field occupation number.

We can therefore write:
$$
B = \sqrt{\frac{\mu_0n\hbar\omega}{V}}
\label{eq:B}
$$


## $\mu$ in $\mu \cdot B$

In order to calculate the dipole moment $\mu$ associated with the $\mu\cdot B$ coupling, we'll pursue a similar analysis as we did for E1 transitions, namely:

We can connect two key expressions related to magnetic dipole interactions:

1. Radiation from a magnetic dipole – describes how an oscillating magnetic dipole emits radiation.  
2. Radiative decay rates from Weisskopf – provides an estimate for transition rates.

### Radiation from a magnetic dipole

The radiative decay rate due to dipole radiation is given by:

$$
\gamma_{\text{rad}} = \frac{\mu_0}{12 \pi \hbar} \frac{\omega^3}{c^3} \mu^2
$$

Rewriting in terms of the fine-structure constant $\alpha$:

$$
\gamma_{\text{rad}} = \frac{\alpha \omega^3}{3 e^2 c^4} \mu^2
$$

where the fine-structure constant is defined as:

$$
\alpha = \frac{e^2}{4\pi \epsilon_0 \hbar c}
$$


### Weisskopf estimate for M1 transition

Weisskopf's formula for radiative decay is given by ([Eq. A.192 of Dommelen's book](http://www.dommelen.net/quantum2/style_a/nt_weis.html#SECTION091258000000000000000)):

$$
\gamma_{\text{rad}}  =  10\frac{2(L+1)}{L [(2L+1)!!]^2} \alpha (kR)^{2L} \omega \left( \frac{3}{l+3} \right)^2 \left( \frac{\hbar}{m_p c R} \right)^2
$$

where:

- $L$ is the multipolarity ($L=1$ for dipole, $L=2$ for quadrupole).
- $k$ is the wavenumber of the emitted radiation.
- $m_p$ is the proton mass
- $R$ is the nuclear radius, given by:

$$
R = R_0 A^{1/3}
$$

where $R_0$ is the radius of a single nucleon and $A$ is the number of nucleons. Note that there exist other forms of Weisskopf's formula that are [more convenient for numerical evaluation](http://www.dommelen.net/quantum2/style_a/ntgd.html#SECTION086204000000000000000) but they obscure the physical constants.

The last term can be related to the reduced Compton wavelength $\bar\lambda_c = \hbar / m c$:

$$
\gamma_{\text{rad}}  =  10\frac{2(L+1)}{L [(2L+1)!!]^2} \alpha (kR)^{2L} \omega \left( \frac{3}{l+3} \right)^2 \left( \frac{\bar\lambda_c}{R} \right)^2
$$

It's instructive to compare the radiation rate for a magnetic dipole vs electric dipole:

$$
\gamma_{\rm rad, B} = \gamma_{\rm rad, E} \times 10\left( \frac{\bar\lambda_c}{R} \right)^2
$$

Given that $R_0 \sim 10^{-15} \ \rm m$ and $\bar\lambda_c \approx 2 \times 10^{-16} \text{ m}$ then:

$$
\gamma_{\rm rad, B} = \gamma_{\rm rad, E} \times 2.5\left( \frac{1}{A} \right)^{2/3}
$$

For $A\approx100$, $\gamma_{\rm rad, B} = 0.1\gamma_{\rm rad, E}$.

For a dipole transition ($L=1$), Weisskopf's formula simplifies to:

$$
\gamma_{\text{rad}} = \frac{20 \times 2}{1 \times [3!!]^2} \alpha \frac{\omega^2}{c^2} R^2 \omega \left(\frac{3}{4} \right)^2 \left( \frac{\bar\lambda_c}{R} \right)^2
$$

Rewriting more compactly:

$$
\gamma_{\text{rad}} = \frac{20}{(3!!)^2} \alpha \frac{\omega^3}{c^2} \bar\lambda_c^2
$$

### Equating the two expressions

$$
\frac{20}{(3!!)^2} \alpha \frac{\omega^3}{c^2} \bar\lambda_c^2 = \frac{\alpha \omega^3}{3 e^2 c^4} \mu^2
$$

$$
\frac{20}{(720)^2} \left( \frac{\hbar}{m_p c} \right)^2 3e^2c^2 = \mu^2
$$

$$
\frac{60}{(720)^2} \left( \frac{e\hbar}{m_p} \right)^2= \mu^2
$$

$$
\frac{\sqrt{60}}{720} \frac{e\hbar}{m_p} = \mu
$$

And so 
$$
\mu \approx 0.02 \mu_N
\label{eq:mu}
$$
Where $\mu_N = e\hbar/m_p \approx 5\times 10^{-27} \ \rm J/T$ is the nuclear magneton. 

## Overall coupling constant

If we again use this simple Hamiltonian in which a single TLS interacts with a single mode but this time it's not a phonon mode but a magnon mode:

$$
H = \frac{\Delta E}{2} \sigma_z + \hbar\omega_A\left(a^{\dagger}a +\frac{1}{2}\right) + U\left( b^{\dagger} + b \right)\sigma_x
$$

then a $\mu \cdot B$ coupling constant $U$ can be defined by simply multiplying  Eq. $\ref{eq:mu}$ by Eq. $\ref{eq:B}$ (without the $\sqrt{n}$) :

$$
U \approx 0.02 \frac{{\mu_N}B}{\sqrt{n}}
$$

$$
U \approx 0.02 {\mu_N}\sqrt{\frac{\mu_0\hbar\omega}{V}}
$$

## Example with magnons

For [magnons](https://journals.aps.org/prb/abstract/10.1103/PhysRevB.61.R11875) with $\hbar \omega \approx 100 \ \rm meV$, lets use a volume $V = 0.001 \ \rm m^{-3}$
$$
\begin{aligned}
U &\approx 0.02 \times 5\times 10^{-27}\times \sqrt{\frac{4\pi\times 10^{-7}\times 100\times 10^{3}\times 1.6\times 10^{-19}}{0.001}} \\
\frac{U}{\hbar\omega} &\approx 0.02 \times 5\times 10^{-27}\times\sqrt{\frac{4\pi\times 10^{-7} }{0.001 \times 100\times 10^{3}\times 1.6\times 10^{-19}}} \\
\frac{U}{\hbar\omega} &\approx 2.8\times10^{-23}
\end{aligned}
$$


