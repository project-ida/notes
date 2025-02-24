---
author: "Matt Lilley"
---

# Introduction

Coupling refers to the interaction between two systems, where the total energy is not a simple sum of the energies of each system. Instead, the total energy also depends on the combined states of both, with each system influencing the other in ways that cannot be separated. We often express the ideas through a Lagrangian or Hamiltonian.

The aim of these notes is to build some intuition for a quantum systems that have extremely strong coupling. In the [quantum optics literature](https://www.nature.com/articles/s42254-018-0006-2), the use the terms:

- Weak
- Strong
- Ultra strong
- Deep strong

To describe the different regimes. We'll begin with a classical example and use the quantum optics language

# A Classical example


For example, consider two identical pendulums of length $l$ and mass $m$ connected by a spring whose stiffness is characterised by $k$. In the small angle approximation ($\theta_1, \theta_1 \ll 1$), the Hamiltonian is:
$$
H = \frac{m l^2}{2} \dot{\theta}_1^2 + \frac{m g l}{2} \theta_1^2 + \frac{m l^2}{2} \dot{\theta}_2^2 + \frac{m g l}{2} \theta_2^2 + \frac{1}{2} k l^2(\theta_1 - \theta_2)^2
$$
The first four terms are the simple sum of each individual pendulum. The third term arrises due to the coupling.

More abstractly, we can write:
$$
H = H_1 + H_2+ V_{\text{coupling}}
$$

and associate frequencies to the different parts:

- $\omega_1 = \sqrt{g/l}$
- $\omega_2 = \sqrt{g/l}$
- $\omega_{\rm coupling} = \sqrt{k/m}$

The system behaves quite differently depending on the strength of the coupling which is proportional to the different frequencies.

## Weak coupling

In reality, there is always dissipation which cannot be properly captured in a Hamiltonian description. We can however define a dissipation rate $\gamma_{\rm diss}$ whose magnitude also changes the system behaviour.

When $\omega_{\rm coupling} \ll \gamma_{\rm diss} \ll \omega_1,\omega_2$, the coupling is described as weak.

There are very small changes in the natural frequencies of the system as compared to the uncoupled case:

- $\omega_1 \rightarrow \omega_+ = \sqrt{g/l}$
- $\omega_2 \rightarrow \omega_- = \sqrt{g/l + 2k/m}$

The energy does not however move back and forwards between the pendulums because of the large dissipation.  

## Strong coupling

When the coupling is "strong" in the sense that $\gamma_{\rm diss} \ll \omega_{\rm coupling} \ll \omega_1,\omega_2$,  dissipation is small enough to allow energy to be slowly [exchanged between the two pendulums](https://www.youtube.com/watch?v=CjJVBvDNxcE&t=57s). The motion is characterised by individual swings happening with a frequency $\approx \sqrt{g/l}$ where the amplitude of those swings gradually undulates on a timescale characterised by $\omega_{\rm exchange} = k/2m\omega_p$.

Strong coupling allows us to still conceptually consider the pendulums as having well defined identities in the sense that they have their own natural frequencies. As the coupling becomes larger, this is no longer the case.

## Ultra strong coupling

When the coupling is "ultra strong" in the sense that $\gamma_{\rm diss} \ll \omega_{\rm coupling} \sim \omega_1,\omega_2$, energy exchange happens on the time scale of a single swing of one of the pendulums.  The two natural natural frequencies can be noticeably discerned, $\omega_+ = \sqrt{g/l}$  when both pendulums move "in phase" (the spring is not stretched) with one another and $\omega_- = \sqrt{g/l + 2k/m}$ when the pendulums move "out of phase".

## Deep strong coupling

When $\gamma_{\rm diss} \ll \omega_1,\omega_2 \ll \omega_{\rm coupling}$ , the coupling dominates over everything else and we enter into a regime called "Deep strong coupling".  Energy transfer between the two pendulums is so fast that it's almost instantaneous and so it's not possible to move one pendulum without the other - they act as a single rigid body.

# Two level systems

$$
H = \frac{\Delta E}{2} \sigma_z + \hbar\omega_A\left(a^{\dagger}a +\frac{1}{2}\right) + U\left( b^{\dagger} + b \right)\sigma_x
$$

