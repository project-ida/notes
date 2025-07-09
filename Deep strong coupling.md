---
author: "Matt Lilley"
---

# Introduction

Coupling refers to the interaction between two systems, where the total energy is not a simple sum of the energies of each system. Instead, the total energy also depends on the combined states of both, with each system influencing the other in ways that cannot be separated. We often express the ideas through a Lagrangian or Hamiltonian.

The aim of these notes is to build some intuition for quantum systems that have extremely strong coupling. In the [quantum optics literature](https://www.nature.com/articles/s42254-018-0006-2), the terms:

- Weak
- Strong
- Ultra strong
- Deep strong

are used to describe the different regimes. 

We will begin with a classical example and use the quantum optics language above. We choose the example of coupled pendulums because it turns out each quantum state with a well-defined energy behaves like its own pendulum (see e.g. [Briggs et.al](https://journals.aps.org/pra/abstract/10.1103/PhysRevA.85.052111)). 

# Coupled pendulums

For example, consider two identical pendulums of length $l$ and mass $m$ connected by a spring whose stiffness is characterised by $k$. In the small angle approximation ($\theta_1, \theta_1 \ll 1$), the Hamiltonian is:

$$
H_{\rm pen} = \frac{m l^2}{2} \dot{\theta}_1^2 + \frac{m g l}{2} \theta_1^2 + \frac{m l^2}{2} \dot{\theta}_2^2 + \frac{m g l}{2} \theta_2^2 + \frac{1}{2} k l^2(\theta_1 - \theta_2)^2
$$

The first four terms are the simple sum of each individual pendulum. The last term arises due to the coupling.

More abstractly, we can write:

$$
H = H_1 + H_2+ V_{\text{coupling}}
$$

and we can associate frequencies to the different parts:

- $\omega_1 = \sqrt{g/l}$
- $\omega_2 = \sqrt{g/l}$
- $\omega_{\rm coupling} = \sqrt{k/m}$

The system behaves quite differently depending on the strength of the coupling which is proportional to the different frequencies.

## Weak coupling

In reality, there is always dissipation which cannot be properly captured in a Hamiltonian description. We can however define a dissipation rate $\gamma_{\rm diss}$ whose magnitude also changes the system behaviour.

The coupling is considered weak when $\omega_{\rm coupling} \ll \gamma_{\rm diss} \ll \omega_1,\omega_2$.

There are very small changes in the natural frequencies of the system as compared to the uncoupled case:

- $\omega_1 \rightarrow \omega_+ = \sqrt{g/l}$
- $\omega_2 \rightarrow \omega_- = \sqrt{g/l + 2k/m}$

The energy does not however move back and forwards between the pendulums because the large dissipation removes the energy before any transfer can occur.

## Strong coupling

When the coupling is "strong" in the sense that $\gamma_{\rm diss} \ll \omega_{\rm coupling} \ll \omega_1,\omega_2$,  dissipation is small enough to allow energy to be slowly [exchanged](https://www.youtube.com/watch?v=CjJVBvDNxcE&t=57s) between the two pendulums. The motion is characterised by individual swings happening with a frequency $\approx \sqrt{g/l}$ where the amplitude of those swings gradually undulates on a timescale characterised by $\omega_{\rm exchange} =  (k/m) / \omega_+$. This exchange happens most effectively when the pendulums have the same length, so that their natural frequencies are the same.

Strong coupling allows us to still conceptually consider the pendulums as having well defined identities in the sense that they have their own natural frequencies. As the coupling becomes larger, this is no longer the case.

## Ultra strong coupling

When the coupling is "ultra strong" in the sense that $\gamma_{\rm diss} \ll \omega_{\rm coupling} \sim 0.1\times  \omega_1,\omega_2$, energy exchange happens on the time scale of a single swing of one of the pendulums.  The two natural frequencies can be noticeably discerned, $\omega_+ = \sqrt{g/l}$  when both pendulums move "in phase" (the spring is not stretched) with one another and $\omega_- = \sqrt{g/l + 2k/m}$ when the pendulums move "out of phase" (the spring is periodically compressed and expanded)

The coupling is getting strong enough so that more energy can be exchanged between pendulums of different lengths.

This exact boundary for this regime is somewhat artificial; there is nothing particularly special about the value $0.1 \omega_{\rm 1}, \omega_2$. This value was first used as part of the quantum optics literature.

## Deep strong coupling

When $\gamma_{\rm diss} \ll \omega_1,\omega_2 \lesssim \omega_{\rm coupling}$, the coupling begins to dominate over everything else and we enter into a regime called "Deep strong coupling".  Energy transfer between the two pendulums is so fast that it is almost instantaneous and so it is not possible to move one pendulum without the other - they act as a single rigid body.

# Rabi model

A canonical quantum example is a single two level system (TLS) interacting with a single mode (i.e. single frequency/wavelength) of a quantised field. This is often called the Rabi model and its Hamiltonian can be written as:
$$
H_{\rm Rabi} = \frac{\Delta E}{2} \sigma_z + \hbar\omega\left(a^{\dagger}a +\frac{1}{2}\right) + U\left( a^{\dagger} + a \right)(\sigma_+ + \sigma_-)
\label{eq:rabiH}
$$

where $\Delta E$ is the transition energy between the 2 levels of the TLS, $\hbar\omega$ is the energy of each quantum of the field, and $U$ is the coupling constant between the TLS and the field. The $\sigma$ operators are the [Pauli spin matrices](https://ocw.mit.edu/courses/5-61-physical-chemistry-fall-2007/3b1fb40c61e7f939861b190bedbc57a7_lecture24.pdf) that act on the TLS, where $\sigma_+$ and $\sigma_-$ act as raising and lowering operators. The $a^{\dagger}$, $a$ are the field creation and annihilation operators respectively.

It is worth noting that we are using the Pauli spin matrices as a mathematical tool to describe two levels. Just keep in mind that we are not really talking about spin angular momentum here.

Although a TLS has just 2 states (denoted $|\pm\rangle$), the quantised field has infinitely many states (denoted by the number of quanta $|n\rangle$). The combined state of the system (denoted $|n, \pm\rangle$) therefore has infinitely many states and so conceptually the system behaves like infinitely many pendulums coupled together. The frequency of these conceptual pendulums is determined by the energy of the states.

Much like the classical example, the dynamics depend on the relative sizes of the different terms in the Hamiltonian. For the quantum case however, it is not enough to just compare the various constants $U, \hbar \omega, \Delta E$. We must also consider how many field quanta $n$ we have. This is because of how the field operators work:

$$
a^{\dagger} |n,\pm\rangle = \sqrt{n+1}|n+1,\pm\rangle \\
$$

$$
a |n,\pm\rangle = \sqrt{n}|n-1,\pm\rangle \\
$$

$$
a^{\dagger}a |n,\pm\rangle = n|n,\pm\rangle
$$

The more field quanta we have, the larger the field and coupling terms will be.

## Weak coupling

Much like the classical pendulums, the quantum states can suffer various forms of "dissipation". As the quantum systems interacts with outside systems, it can cause:

- Dephasing - where the phase relationship between each of the quantum states starts to change over time
- Decoherence - the system is forced out of a superposition state and into a well defined state aka "collapse of the wavefunciton"

If we define $\hbar\gamma_{\rm diss}$  as a characteristic energy associated with the above processes, then $\sqrt{n}U \ll \hbar \gamma_{\rm diss} \ll \Delta E , n\hbar \omega$ defines the weak coupling regime. Spontaneous emission is the most characteristic feature of weak coupling where an excited TLS with less field quanta (e.g. $|n,+\rangle$) is coupled to a ground state TLS with more field quanta (e.g. $|n+1,-\rangle$ ). The coupling is however not so strong that the field quanta can get reabsorbed.

> Note that truly irreversible spontaneous emission also relies on there being a continuum of states instead of discrete ones.

## Strong coupling

As in the classical case, when the coupling is strong in the sense that $\hbar\gamma_{\rm diss} \ll \sqrt{n}U \ll \Delta E , \hbar \omega$, there is time for slow exchange between the different quantum states (remember each state is like it's own pendulum).  Unlike the classical case, where it is energy that is exchanged, in the quantum case it is state occupation probability $|\psi|^2$ that is exchanged. 

In order for exchange to occur effectively, the quantum states need to have the same energy. This is equivalent to the conceptual pendulums having the same length. Two such states are often described as "resonant" with one another. Whether or not the system has any resonances depends on the relationship between $\hbar \omega$ and $\Delta E$.

### Matched field and TLS

The field is matched to the TLS when $\Delta E = \hbar\omega$. This is the most widely discussed regime in which a transition of the TLS (often an atomic transition) results in the emission of a single field quantum (often a photon). In a cavity where discrete states can be arranged and field quanta can be confined, this results in occupation probability oscillating between states like $|n,+\rangle$ and  $|n+1,-\rangle$. These oscillations are called [Rabi oscillations](https://en.wikipedia.org/wiki/Jaynes%E2%80%93Cummings_model#Vacuum_Rabi_oscillations) which have a frequency $\Omega/\hbar\omega \sim \sqrt{n}U/\hbar\omega$

### Mismatched field and TLS

The field is mismatched to the TLS when $\Delta E \neq \hbar\omega$ . If the mismatch is arbitrary, e.g. $\Delta E/ \hbar\omega = 2.83677$ then Rabi oscillations cannot occur because the coupling term ($\sim \sqrt{n}U$) is still very small compared to $\Delta E$ and $\hbar\omega$ and so it cannot accommodate any energy mismatch between the field and the TLS.

If however, $\Delta E = m\hbar \omega$ where $m=3, 5, 7 ...$ then  $|n,+\rangle$ is "resonant" with,  $|n+3,-\rangle$, $|n+5,-\rangle$, $|n+7,-\rangle ...$  and so Rabi oscillations can once again occur. The frequency is slower $\Omega/\hbar\omega \sim (\sqrt{n}U/\hbar\omega)^m$ and so for larger $m$ the emission of multiple quanta becomes less and less likely.

## Ultra strong coupling

When the coupling becomes a sizeable fraction of the TLS and field quantum, $\hbar\gamma_{\rm diss} \ll \sqrt{n}U \sim 0.1 \times \Delta E , \hbar \omega$, non-resonant states begin to gain significant occupancy. For example, a system can start out in state $|0,+\rangle$ with 100% probability and overtime a state $|1,+\rangle$ can gain a non-trivial amount of occupation probability. Although this superficially appears to violate energy conservation, the energy in the coupling is no longer small and so all terms in the Hamiltonian need to be considered when thinking about energy conservation.

The coupling term can also accommodate energy mismatches between the TLS and the oscillator, e.g. $\Delta E/ \hbar\omega = 2.83677$ vs $\Delta E/ \hbar\omega = 3$. This makes it easier to observe the emission of multiple quanta.

## Deep strong coupling

When the coupling becomes on the same order or greater than the TLS and field quantum $\hbar\gamma_{\rm diss} \ll \Delta E , \hbar \omega \lesssim \sqrt{n}U$, then TLS transitions and creation/annihilation of field quanta can no longer be understood by simply thinking about the TLS and field exchanging energy with each other and the coupling as a kind of glue between the two. The coupling term has an "identity" all of its own.

This regime was first theoretically explored in [2010 by Casanova at.al](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.105.263603) where a simpler definition of "deep strong coupling" was given as:

$$
\frac{U}{\hbar\omega} \gtrsim 1
\label{eq:deepstrongcoupling}
$$

Indeed, if their condition is satisfied then $\hbar \omega \lesssim \sqrt{n}U$ is guaranteed.

Let's first consider the case (as Casanova did) where the TLS energy is small in the sense that  $\Delta E < \hbar \omega$. If the coupling is in the deep strong regime so that $U/\hbar\omega \gtrsim 1$ then, from an energy conservation point of view, the coupling term can spontaneously create field quanta. The field effectively "borrows" energy from interaction energy which can take on a form of energy debt. There is a limit to how much energy debt that the interaction term can take on because the energy cost of the quanta grows like $n$ whereas the interaction terms grows more slowly like $\sqrt{n}$. At some level of quanta, the energy required to make an extra quanta outstrips the interaction's ability to provide.


From these ideas, we can find out how many quanta get created by equating the field energy to the coupling energy in the Hamiltonian:

$$
n\hbar\omega \sim \sqrt{n}U
\label{eq:couplingbalancefield}
$$

This gives us:

$$
n \sim \left(\frac{U}{\hbar\omega}\right)^2
\label{eq:selfconsistentn}
$$

When you work out the detailed maths, you end up with $n = 4(U/\hbar\omega)^2$. 


When the TLS energy is not small ($\Delta E \gtrsim \hbar \omega$) then there is an additional energy equivalence to consider:
$$
\Delta E \sim \sqrt{n}U
\label{eq:couplingbalancetls}
$$

Eq. $\ref{eq:couplingbalancefield}$ and Eq. $\ref{eq:couplingbalancetls}$ can be solved simultaneously to eliminate $n$. This gives us a relationship between $U,\Delta E,\hbar\omega$:

$$
\begin{aligned}
\Delta E &\sim \sqrt{\left(\frac{U}{\hbar\omega}\right)^2}U \\
\Delta E &\sim \frac{U^2}{\hbar\omega} \\
U &\sim \sqrt{\Delta E \hbar\omega} \\
\frac{U}{\hbar\omega} &\sim \sqrt{\frac{\Delta E}{\hbar\omega}}
\end{aligned}
\label{eq:uconstraint}
$$


For the case when the TLS energy dominates over the field, $\Delta E \gg \hbar \omega$, Eq. $\ref{eq:uconstraint}$ is a more appropriate coupling threshold to consider than Eq. $\ref{eq:deepstrongcoupling}$. This regime is sometimes called "dispersive deep strong coupling" as was first coined by [Felicetti et.al in 2017](https://journals.aps.org/pra/abstract/10.1103/PhysRevA.95.013827). Again, when you do the detailed maths, you get an extra constant so that:

$$
\frac{U}{\hbar\omega} \gtrsim \frac{1}{2}\sqrt{\frac{\Delta E}{\hbar\omega}}
\label{eq:superradianttransition}
$$

In the extreme case when $\Delta E/\hbar\omega \rightarrow \infty$ then Eq. $\ref{eq:superradianttransition}$ represents a boundary of what's called a superradiant phase transition (detailed in [2015 by Hwang et.al](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.115.180404)). When you go above this critical coupling, the system undergoes a phase change where the lowest energy state involves a non-zero amount of field quanta. In other words, above this threshold the TLS freely exchanges energy with the field and the usual restrictions around having a matched TLS and field are not important. Superradiant phase transitions have been discussed for much longer times [in relation to the Dicke model](https://en.wikipedia.org/wiki/Dicke_model#Superradiant_transition_and_Dicke_superradiance) and we'll come back to look at this later on.

### Relativistic phonon nuclear coupling

For acoustic phonons, we choose a notation $\omega \equiv \omega_A$. From notes on [Coupling constants in nuclear physics](https://github.com/project-ida/notes/blob/main/pdf/Coupling%20constants%20in%20nuclear%20physics.pdf), we derived the relativistic phonon nuclear coupling as:

$$
\frac{U}{\hbar \omega_A} = \sqrt{\frac{2}{N}} \sqrt{\frac{\Delta E}{M c^2}} \sqrt{\frac{\Delta E}{\hbar \omega_A}} \times 10^{-3}
\label{eq:phononcoupling}
$$

where $N$ is the number of nuclei involved in the phonon motion, and $M$ is the mass of the nucleus.

Typically, we imagine a phonon as being the quantised oscillatory motion of many nuclei in a lattice. However, it's possible to arrange systems in which the motion of an isolated nucleus is considered (see e.g. [Cat et.al 2021](https://www.nature.com/articles/s41467-021-21425-8)) - in which case $N=1$.

Our example Hamiltonian in Eq. $\ref{eq:rabiH}$ is for a single TLS, so we'll consider Eq. $\ref{eq:phononcoupling}$ with $N=1$. We'll extend the Hamiltonian to many TLS later on.

For nuclear transitions mediated by phonons, $\Delta E \sim \rm MeV$and $\hbar\omega_A \sim 10 \ \rm neV$ and so $\Delta E/\hbar\omega \gg 1$. Therefore, Eq. $\ref{eq:superradianttransition}$ is the appropriate superradiant threshold condition.

Substituting the expression for coupling (Eq. $\ref{eq:phononcoupling}$) into the critical coupling expression (Eq. $\ref{eq:superradianttransition}$) gives the following condition:

$$
\begin{aligned}
2\frac{U}{\hbar\omega_A}\sqrt{\frac{\hbar\omega_A}{\Delta E}} &\gtrsim 1 \\
2\sqrt{2} \sqrt{\frac{\Delta E}{M c^2}}  \times 10^{-3} &\ge 1
\end{aligned}
\label{eq:criticalphononcouplingexplicit}
$$

For nuclear transitions $\Delta E \sim MeV$  and for a single nucleon $Mc^2 \sim GeV$ so it's already clear that for any sized nucleus we won't enter the superradiant regime. For the sake of completeness, let's evaluate Eq. $\ref{eq:criticalphononcouplingexplicit}$ for a transition with $\Delta E \approx 24MeV$ and for a palladium nucleus with  $Mc^2 \approx 100GeV$

$$
2\sqrt{2} \sqrt{\frac{24\times10^6}{10^{11}}}  \times 10^{-3} \approx 4 \times 10^{-5} \ll 1
\label{eq:criticalphononcouplingexplicitnumbers}
$$

This confirms that a single nucleus cannot undergo a superradiant phase transition using relativistic phonon nuclear coupling. Let's look at another type of coupling that's also associated with oscillatory phonon motion.


### Electric dipole coupling

For electric dipole coupling associated with an oscillating electric field driving phonon motion, we continue to use the notation $\omega \equiv \omega_A$. From notes on [Coupling constants in nuclear physics](https://github.com/project-ida/notes/blob/main/pdf/Coupling%20constants%20in%20nuclear%20physics.pdf), we derived the electric dipole phonon coupling as:

$$
\frac{U}{\hbar \omega_A} = \frac{2\pi\sqrt{2}}{Z \sqrt{N}} \sqrt{\frac{M c^2}{\hbar \omega_A}} \frac{\hbar \omega_A}{E_L} A^{1/3} \times 6 \times 10^{-3}
\label{eq:dipolecoupling}
$$

If we once again take $N=1$,  thens substituting the expression for coupling (Eq. $\ref{eq:dipolecoupling}$) into the critical coupling expression (Eq. $\ref{eq:superradianttransition}$) gives the following condition:

$$
\begin{aligned}
2\frac{U}{\hbar\omega_A}\sqrt{\frac{\hbar\omega_A}{\Delta E}} &\gtrsim 1 \\
\frac{4\pi\sqrt{2}}{Z} \sqrt{\frac{M c^2}{\Delta E}} \frac{\hbar \omega_A}{E_L} A^{1/3} \times 6 \times 10^{-3} &\gtrsim 1
\end{aligned}
\label{eq:criticaldipolecouplingexplicit}
$$


For palladium nuclear transitions mediated by acoustic phonons:

- $A \approx 106$
- $Z \approx 106$
- $M c^2 \approx 10^{11}$ eV
- $\Delta E \approx 24 \times 10^{6}$ eV  
- $\hbar \omega_A \approx 10^{-8}$ eV

The localization energy $E_L$ is:

$$
E_L = \frac{\hbar c}{R_0} = \frac{6.6 \times 10^{-34} \times 3 \times 10^8}{10^{-15}}
$$

$$
= 2 \times 10^{-10} \text{ J} = 1.2 \times 10^9 \text{ eV} \approx 10^9 \text{ eV}
$$

And so evaluating Eq. $\ref{eq:criticaldipolecouplingexplicit}$ gives:

$$
\frac{4 \pi\sqrt{2} }{106} \times \sqrt{\frac{10^{11}}{24\times10^{6}}} \times \frac{10^{-8}}{10^9} \times 6 \times 10^{-3} \times 106^{1/3} \approx 3\times 10^{-18} \ll 1
\label{eq:dipolewithnumbers}
$$

And so we're even further away from the superradiant regime when considering the electric dipole coupling associated with the phonon motion for a single nucleus.

We've so far looked at the Rabi model where the number of TLS is $N=1$. How does the story change when we have many TLS?

# Dicke model

The Dicke model describes a system where we have $N$ identical TLS coupled to a single mode (i.e. single frequency/wavelength) of a quantised field. The Dicke Hamiltonians is a simple extension of the Rabi Hamiltonian in Eq. $\ref{eq:rabiH}$ in the sense that we just add $N$ copies of the TLS terms as seen below:

$$
H_{\text{Dicke}} = \frac{\Delta E}{2} \sum_{i=1}^N \sigma_z^{(i)} +  \hbar\omega\left(a^{\dagger}a +\frac{1}{2}\right) + U \sum_{i=1}^N (a^\dagger + a) (\sigma_+^{(i)} + \sigma_-^{(i)})
\label{eq:dickeH}
$$

The states of this system are described by $|n, \pm, \pm, \pm, \pm, ... \rangle$.

For this ensemble of $N$ nuclei, the coupling is enhanced by at least $\sqrt{N}$ and at most $N$ due to Dicke superradiance effects. For more detail on the Dicke model that leads to these enhancements, see the [notes](https://github.com/project-ida/notes/blob/main/pdf/Dicke%20model.pdf) I made on the subject.

> It should be noted that the effect of Dicke superradiance and superradiant phase transitions are [not the same](https://en.wikipedia.org/wiki/Dicke_model#Superradiant_transition_and_Dicke_superradiance). The former involves a transient enhancement in emission of $N$ TLS which ultimately ends up with all the TLS in their ground state and the field quanta escaping to infinity.  The latter involves a permanent change in the ground state a cavity system in which field and TLS are both confined.

If we look back at the couplings in Eqs. $\ref{eq:phononcoupling}$ and $\ref{eq:dipolecoupling}$, we can see a $1/\sqrt{N}$ term appears to reduce the coupling significantly for very large numbers of nuclei. However, if we are able to take advantage of Dicke effects, then the situation is very different:

- For fully excited systems, Dicke enhancement of the coupling scales like $\sqrt{N}$  and so coupling for $N$ nuclei is the same as for a single nuclei (from $\sqrt{N}/\sqrt{N}$)
- For half excited systems,  Dicke enhancement of the coupling scales like $N$  and so coupling for $N$ nuclei scales like $\sqrt{N}$ (from $N/\sqrt{N}$)

And so, we have two sources of coupling enhancement:

- $\sqrt{n}$ from the field part
-  At least $\sqrt{N}$ and at most $N$ from the TLS part due to Dicke effects

### Deep strong coupling

If we take the most conservative Dicke enhancement, then the condition for deep strong coupling can be arrived at by simply replacing $U$ in Eq. $\ref{eq:superradianttransition}$ with $U\sqrt{N{}}$:
$$
\frac{U\sqrt{N}}{\hbar\omega} \gtrsim \frac{1}{2}\sqrt{\frac{\Delta E}{\hbar\omega}}
\label{eq:dickesuperradianttransition}
$$
As $N\rightarrow \infty$ this condition triggers a [superradiant phase transition](https://royalsocietypublishing.org/doi/10.1098/rsta.2010.0333) similar to what we saw in the Rabi model when $\Delta E / \hbar\omega \rightarrow \infty$.

If we look back at the couplings in Eqs. $\ref{eq:phononcoupling}$ and $\ref{eq:dipolecoupling}$, we can see a $1/\sqrt{N}$ terms will cancel with the $\sqrt{N}$ in Eq. $\ref{eq:dickesuperradianttransition}$. This means that our earlier calculations with $N=1$ will apply to an arbitrary number of TLS and so we won't get closer to a superradiant phase transition by having more TLS involved.

If however, we could use the most optimistic Dicke enhancement, then we'd instead have:

$$
\frac{UN}{\hbar\omega} \gtrsim \frac{1}{2}\sqrt{\frac{\Delta E}{\hbar\omega}}
\label{eq:dickesuperradianttransition2}
$$

#### Relativistic phonon nuclear coupling

Using the most optimistic Dicke enhancement, for relativistic phonon nuclear coupling (Eq. $\ref{eq:phononcoupling}$) we'd have:
$$
2\sqrt{2}\sqrt{N} \sqrt{\frac{\Delta E}{M c^2}}  \times 10^{-3} \ge 1
$$

Using the same numbers as before in Eq. $\ref{eq:criticalphononcouplingexplicitnumbers}$ then:


$$
2\sqrt{2} \sqrt{N}\sqrt{\frac{24\times10^6}{10^{11}}}  \times 10^{-3} \approx 4 \times 10^{-5} \sqrt{N} \ge 1
$$

This gives us a condition on the number of nuclei that we need:

$$
N \gtrsim 8 \times 10^8
$$

If we were instead to consider a different transition, e.g. the $\rm 14keV$ transition of $\rm ^{57}Fe$ then:

$$
2\sqrt{2} \sqrt{N}\sqrt{\frac{14\times10^3}{5\times 10^{10}}}  \times 10^{-3} \approx 1.5 \times 10^{-6} \sqrt{N} \ge 1
$$

Which would gives us the following condition on the number of nuclei that we need:

$$
N \gtrsim 4 \times 10^{11}
$$

Both the $\rm Pd$ and $\rm ^{57}Fe$ numbers are well within practical limits given that solid number density is about $5\times 10^{28} \rm m^{-3}$



#### Electric dipole coupling

Using the most optimistic Dicke enhancement, for electric dipole coupling (Eq. $\ref{eq:dipolecoupling}$) we have (using the same numbers as in Eq. $\ref{eq:dipolewithnumbers}$):

$$
3\times 10^{-18}\sqrt{N}  \ge 1
$$

Which would gives us the following condition on the number of nuclei that we need:

$$
N \gtrsim 10^{35}
$$

This is well outside of what is practical.
