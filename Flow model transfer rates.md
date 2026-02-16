# Flow model transfer rates

During start-up when the power associated with fusion events is low, we expect to only have excitation transfer via "direct" fusion transitions that go from $\rm D_2 \rightarrow ^4He$. As things get going, contributions from "indirect" fusion transitions starts to dominate - this is when $\rm D_2 \rightarrow (3+1) \rightarrow ^4He$. We represent the transfer rates as $\Gamma_{D_2/^4He}$ for direct and $\Gamma_{D_2/(3+1)/^4He}$ for indirect.

## Reminder from the SI

### Single transition

If we assume there exists a single $\rm Pd$ transition that can accommodate the $\Delta M c^2  \approx 23.85 \, \rm MeV$  fusion energy, then the Dicke enhanced excitation transfer rate from $\rm D_2$ to $\rm Pd$ is given by: 

$$
\Gamma_{transfer} = {2 \over \hbar} |1 - \eta| {\mathcal{U} \mathcal{V} \over \Delta Mc^2}
\label{eq:coherent_rate}
$$

where the Dicke enhanced $a\cdot cP$ matrix elements for the  $\rm D_2$ and $\rm Pd$ transitions are

$$
\mathcal{U} = |\langle {\rm D}_2  | a_z | ^4{\rm He} \rangle| c \sqrt{\langle P_{\rm ^4He}^2 \rangle}\sqrt{N_{\rm D_{2}}}
$$

$$
\mathcal{V} = |\langle {\rm Pd}^* | a_z | {\rm Pd} \rangle|
c \sqrt{\langle P_{\rm Pd}^2 \rangle} \sqrt{N_{\rm Pd}}
$$

and $|1 - \eta|$ tells us the degree to which we have broken destructive interference (with 1 being the maximum possible). The square root Dicke factors give the number of  $\rm D_2$ and $\rm Pd$ nuclei inside a coherence domain.

### Multiple transitions

When the transfer of the $\Delta M c^2  \approx 23.85 \, \rm MeV$  fusion energy is shared across a number $\rm Pd$ transitions $n_{tr}$, then the Dicke enhanced transfer rate from $\rm D_2$ to $\rm Pd$ is given by: 

$$
\Gamma_{transfer} = {2 \over \hbar} |1 - \eta| \,\mathcal{U} \prod_{i=1}^{n_{tr}}\left({\mathcal{V}(\epsilon_i) \over \epsilon_i} \right)
\label{eq:mutiple_trans}
$$

where the energy of the participating $\rm Pd$ transitions must add up to the fusion energy  $\sum_i \epsilon_i = 23.85 \, \rm MeV$. 

We write the normalised Dicke enhanced $\rm Pd$ matrix elements

$$
g_i \equiv {\mathcal{V}(\epsilon_i) \over \epsilon_i}
$$

so that we can more conveniently write the transfer rate as

$$
\Gamma_{transfer} = {2 \over \hbar} |1 - \eta| \,\mathcal{U} \prod_{i=1}^{n_{tr}}g_i
$$

Because the $\rm Pd$ transitions are not suppressed by the Coulomb barrier, we can enter the strong coupling regime from the perspective of the $\rm Pd$ transitions, in other words $g \gtrsim 1$. In the strong coupling regime, the perturbative approach that leads to Eq. $\ref{eq:mutiple_trans}$  no longer holds. We can attempt a crude correction for the strong coupling by effectively capping the $g'\rm s$ in the following way

$$
\Gamma_{transfer} = {2 \over \hbar} |1 - \eta| \,\mathcal{U} \prod_{i=1}^{n_{tr}}F(g_i)
$$

where

$$
F(g) \sim \frac{g}{1+g}
$$

## Direct fusion transitions

### Multiple transitions, single receiver

We will consider the excitation transfer from $\rm D_2$ to a single receiver state made up of four $\rm Pd$ transitions. The transfer rate has been calculated by Peter to be:

$$
\Gamma_{D_2/^4He}^{(0)} \sim 1.3 \times 10^2 \,
\left|1 - \eta_{D_2/^4\mathrm{He}}\eta_{P_d}\right|  \left( \frac{1\,\mathrm{MHz}}{f_A} \right)^{3/4}
\sqrt{ \frac{P_{diss}}{1\,\mathrm{W}}  } \sqrt{\frac{N_{D_2}}{N}} \sqrt{N_{^4 He}} F(g)^4
\label{eq:gamma_direct}
$$

> Note that we're not sure on the helium Dicke factor yet.

The asymmetry factor $\left|1 - \eta_{D_2/^4\mathrm{He}}\eta_{P_d}\right|$ arrises due to fusion loss and for this "direct" fusion transition Peter calculated this to be:

$$
\left|1 - \eta_{D_2/^4\mathrm{He}}\eta_{P_d}\right| \approx \frac{1}{80}
$$

Substituting back into Eq. $\ref{eq:gamma_direct}$ rate we get:

$$
\Gamma_{D_2/^4He}^{(0)} \sim 1.6 \left( \frac{1\,\mathrm{MHz}}{f_A} \right)^{3/4}
\sqrt{ \frac{P_{diss}}{1\,\mathrm{W}}  } \sqrt{\frac{N_{D_2}}{N}} \sqrt{N_{^4 He}} F(g)^4
\label{eq:gamma_direct2}
$$

Technically we should have  $F(g_1)F(g_2)F(g_3)F(g_4)$ instead of $F(g)^4$ to allow for the possibility of four different $\rm Pd$ transitions. We will however treat them in an averaged sense for now so that $\epsilon  \approx 24 \, \rm MeV / 4$ ; Peter uses $\epsilon = \ 6.75 \, \rm MeV$.

To get an expression for $g$ , we need to express the matrix element in terms of acoustic phonon mode energy $E_A = P_{diss}\tau_A$

$$
\begin{equation}
\begin{aligned}
g
&= \frac{ |\langle \mathrm{Pd}^* | a_z | \mathrm{Pd} \rangle| \, c \,
\sqrt{\langle P_{\mathrm{Pd}}^2 \rangle} }{ \epsilon}
\sqrt{N_{\mathrm{Pd}}} \\[6pt]
&= \frac{ |\langle \mathrm{Pd}^* | a_z | \mathrm{Pd} \rangle| }{ \epsilon}
\sqrt{\frac{M_{Pd}c^2 P_{diss} \tau_A}{N}}
\sqrt{N_{\mathrm{Pd}}} \\[6pt]
&= \frac{ |\langle \mathrm{Pd}^* | a_z | \mathrm{Pd} \rangle| \,
\sqrt{M_{Pd}c^2 P_{diss} \tau_A} }{ \epsilon}
\sqrt{\frac{N_{\mathrm{Pd}}}{N}} .
\end{aligned}
\label{eq:g_to_Pdiss}
\end{equation}
$$

Now we can bring in Peter's calculation for $\Upsilon$ averaged over all the $\rm Pd$ transitions

$$
\bar \Upsilon = |\langle \mathrm{Pd}^* | a_z | \mathrm{Pd} \rangle|^2 \frac{M_{Pd}c^2}{\epsilon} \approx 2.2 \times 10^{-8}
$$

We can connect $\bar \Upsilon$ to $g$ through:

$$
\frac{|\langle \mathrm{Pd}^* | a_z | \mathrm{Pd} \rangle| \sqrt{M_{Pd}c^2}}{\epsilon} = \sqrt{\frac{\bar \Upsilon}{\epsilon}} \approx \sqrt{\frac{2.2 \times 10^{-8}}{6.75 \times 10^6 \times 1.6\times 10^{-19}\, \rm J}} \approx 142
$$

This gives

$$
g \approx \ 142 \sqrt{\frac{P_{diss} \tau_A}{1 \, \rm J}} \sqrt{\frac{N_{\mathrm{Pd}}}{N}}
$$

The phonon lifetime is given by

$$
\tau_A = 10^{-12} \left( \frac{10^{-7} f_A}{1 \, \text{MHz}} \right)^{-3/2} \, \text{sec}
$$

#### Small g

In the weak coupling regime ($g \ll 1$) we have  $F(g) \approx g$ and we can get a nice expression for the transfer rate. For the transfer rate we need $g^4$

$$
g^4 \approx 4\times 10^8 \left(\frac{P_{diss} }{1\, \rm W}\right)^2 10^{-24}\left(\frac{1 \, \rm  MHz}{10^{-7}f_A}\right)^3 \left(\frac{N_{\mathrm{Pd}}}{N}\right)^2 
=  4\times 10^5 \left(\frac{P_{diss}}{1\, \rm W}\right)^2 \left(\frac{1 \, \rm  MHz}{f_A}\right)^3 \left(\frac{N_{\mathrm{Pd}}}{N}\right)^2
$$

Substituting back into Eq. $\ref{eq:gamma_direct2}$ gives:

$$
\Gamma_{D_2/^4He}^{(0)} \sim 6.4 \times 10^5  \left( \frac{1\,\mathrm{MHz}}{f_A} \right)^{3.75}
\left(\frac{P_{diss}}{1\,\mathrm{W}}  \right)^{2.5} \sqrt{\frac{N_{D_2}}{N}} \left(\frac{N_{\mathrm{Pd}}}{N}\right)^2\sqrt{N_{^4 He}}
\label{eq:gamma_direct3}
$$

Let's use some numbers from the SI, and setting $N_{^4He}=1$ for now:
$$
f_A \sim 5 \, \rm MHz, \quad \frac{N_{D_2}}{N} \sim 0.25 \times \frac{1}{9}, \quad \frac{N_{{Pd}}}{N} \sim 0.25
$$

The acoustic mode lifetime is $\tau_A\approx \, \rm 3 \, \rm ms$  and so

$$
g = 3.8\sqrt{\frac{P_{diss}}{1 \, \rm W}}
$$

For $P_{diss} \lesssim 1 \, \rm mW$ we are in the perturbative regime where Eq. $\ref{eq:gamma_direct3}$ can be used. Let's look at transfer rates for $1\, \rm mW$ and $1\, \rm \mu W$

$$
\Gamma_{D_2/^4He}^{(0)}\, (1 \, \rm mW) \approx 5\times 10^{-7} \, \rm s^{-1}
$$

$$
\Gamma_{D_2/^4He}^{(0)}\, (1 \, \rm \mu W) \approx 1.6\times 10^{-14} \, \rm s^{-1}
$$

#### Large g

In the strong coupling regime ($g \gtrsim 1$) we have $F(g) \approx 1$ and we can also get a nice expression for the transfer rate. Substituting into Eq. $\ref{eq:gamma_direct2}$ gives

$$
\Gamma_{D_2/^4He}^{(0)} \sim 1.6 \left( \frac{1\,\mathrm{MHz}}{f_A} \right)^{3/4}
\sqrt{ \frac{P_{diss}}{1\,\mathrm{W}}  } \sqrt{\frac{N_{D_2}}{N}} \sqrt{N_{^4 He}}
$$

Using $P_{diss}\sim 1 \, \rm W$ from the SI and setting $N_{^4He}=1$ for now, we get a rate of

$$
\Gamma_{D_2/^4He}^{(0)}\, (1 \, \rm W)\approx 8\times 10^{-2} \, s^{-1}
$$

### Multiple transitions, multiple receivers

We will now consider the excitation transfer from $\rm D_2$ to many receiver states made up of four $\rm Pd$ transitions. Whereas in the previous section we imagined just one state that was perfectly matched to the fusion energy, now we allow states that are not perfectly matched. Such "off-resonant" states can participate in the excitation transfer because the difference in energy can be made up through rapid energy exchange between the $\rm Pd$ and the phonons. Because we have many states that now can contribute to the transfer, the rate goes up according to:

$$
\Gamma_{D_2/^4He} \sim \Gamma_{D_2/He}^{(0)} \, \rho \,\delta \epsilon
\label{eq:gamma_direct_energyx}
$$

 Where $\rho$ is the density of palladium excited states and $\delta \epsilon$ is the energy exchanged per "channel"

> I'm still not quite sure what we mean by channels here

Peter has calculated the density of states to be

$$
\rho \approx 4\times 10^7 \, \rm eV^{-1}
$$

which works out at one state every $26 \, \rm neV$.

For the energy exchanged with acoustic phonons, Peter has calculated this to be:

$$
\begin{equation}
\begin{aligned}
\delta \epsilon
&\approx \hbar \omega_A \, \Delta n_{AA} \\
&= \hbar \omega_A
\left( 2 n_j \bar{Y}_j |e^{(A)}|^2 n_A \right)^{1/3} \\
&= 5.3 \, |e^{(A)}|^{2/3} \, (n_j)^{1/3}
\left( \frac{P_{diss}^{(A)}}{1\,\mathrm{W}} \right)^{1/3}
\left( \frac{f_A}{1\,\mathrm{MHz}} \right)^{1/6}
\;\mathrm{meV}
\end{aligned}
\label{eq:dela_eps}
\end{equation}
$$

I don't know exactly what to put for $|e^{(A)}|$ (which I think it the polarisation vector). I'm going to set it equal to one for now. $n_j$ is the number of transitions which is four for us.  Using the SI parameters for power  and frequency we have:
$$
\delta \epsilon\approx 11 \, \rm meV
$$

This gives us an transfer rate of
$$
\Gamma_{D_2/^4He} \sim \Gamma_{D_2/^4He}^{(0)}  \times 4.4\times 10^5 \sim 3.5\times 10^4 \, s^{-1}
\label{eq:gamma_direct_energyx2}
$$

## Indirect fusion transitions

The analysis from the section on direct fusion transitions works for the indirect case too.

### Multiple transitions, single receiver

We will consider the excitation transfer from $\rm D_2$ to a single receiver state made up of four $\rm Pd$ transitions. The transfer rate has been calculated by Peter to be:

$$
\Gamma_{D_2/(3+1)/^4He}^{(0)} \sim 4.3 \times 10^2 \,
\left|1 - \eta_{D_2/(3+1)/^4\mathrm{He}}\eta_{P_d}\right|  \left( \frac{1\,\mathrm{MHz}}{f_A} \right)^{3/4}
\sqrt{ \frac{P_{diss}}{1\,\mathrm{W}}  } \sqrt{\frac{N_{D_2}}{N}} \sqrt{N_{^4 He}} F(g)^4
\label{eq:gamma_indirect}
$$

> Note that we're not sure on the helium Dicke factor yet.

The asymmetry factor $\left|1 - \eta_{D_2/(3+1)/^4\mathrm{He}}\eta_{P_d}\right|$ arrises due to fusion loss and for this "indirect" fusion transition Peter calculated this to be:

$$
\left|1 - \eta_{D_2/(3+1)/^4\mathrm{He}}\eta_{P_d}\right| \approx 0.57
$$

Substituting back into Eq. $\ref{eq:gamma_indirect}$ rate we get:

$$
\Gamma_{D_2/(3+1)/^4He}^{(0)} \sim 245 \left( \frac{1\,\mathrm{MHz}}{f_A} \right)^{3/4}
\sqrt{ \frac{P_{diss}}{1\,\mathrm{W}}  } \sqrt{\frac{N_{D_2}}{N}} \sqrt{N_{^4 He}} F(g)^4
\label{eq:gamma_indirect2}
$$
By comparing the indirect transfer rate Eq. $\ref{eq:gamma_indirect2}$ with the direct one in Eq. $\ref{eq:gamma_direct2}$ we can see immediately that the transfer rate via the indirect pathway is going to yield larger rates according to

$$
\Gamma_{D_2/(3+1)/^4He}^{(0)} \approx 150 \,\Gamma_{D_2/^4He}^{(0)}
\label{eq:direct_vs_indirect}
$$

This factor of 150 is not large enough to yield observable fusion reactions, so we still need to lean on the idea of having multiple receivers.

### Multiple transitions, multiple receivers

As in the direct fusion transitions section, we will now consider the excitation transfer from $\rm D_2$ to many receiver states made up of four $\rm Pd$ transitions. Because we have many accessible states due to energy exchange with the acoustic phonons the rate goes up according to:

$$
\Gamma_{D_2/(3+1)/^4He} \sim \Gamma_{D_2/(3+1)/^4He}^{(0)} \, \rho \,\delta \epsilon
$$

By using the results from the direct transitions section (Eq. $\ref{eq:gamma_direct_energyx2}$) along with Eq. $\ref{eq:direct_vs_indirect}$, we can write down immediately the transfer rate

$$
\Gamma_{D_2/(3+1)/^4He}  \approx 150 \,\Gamma_{D_2/^4He}^{(0)} \times 4.4\times 10^5 \approx 150\times 3.5\times 10^4 \approx 5.3\times 10^6 \, \rm s^{-1}
\label{eq:indirect_with_energy_exchange}
$$

This rate is about 200 times smaller than the $10^9 \, \rm s^{-1}$ that we estimated in the SI. 

It is worth noting that we have assumed here that we are still only working with acoustic phonons. It can be argued that if the indirect fusion channel is open then we have both acoustic and optical phonons. The amount of energy exchanged in that case would be larger than predicted by Eq. $\ref{eq:dela_eps}$ because we should also add the following to $\delta \epsilon$

$$
\begin{equation}
\begin{aligned}
\hbar \omega_0 \, \Delta n_{00}
&= \hbar \omega_0
\left( 2 n_j \,\bar{\Upsilon}_j \, |e^{(O)}|^2 \, n_O \right)^{1/3} \\
&= 0.075 \, |e^{(O)}|^{2/3} \, (n_j)^{1/3}
\left( \frac{P_D^{(O)}}{1\,\mathrm{W}} \right)^{1/3}
\left( \frac{f_O}{1\,\mathrm{MHz}} \right)^{1/6}
\;\mathrm{eV}
\end{aligned}
\label{eq:hbar_omega0_delta_n00}
\end{equation}
$$

Note here the units of $\rm eV$ as opposed to $\rm meV$ and recall that the frequency of optical phonons is $\sim \rm THz$ so the energy exchange potential of the optical phonons is much larger than the acoustic ones.

## Incoherent transitions

So far in this document we've been assuming coherence - this is baked into the form of Eqs. $\ref{eq:coherent_rate}$ and $\ref{eq:mutiple_trans}$.  Specifically, for coherent transfer between initial state $i$ and final state $f$ we have

$$
\Gamma_{coherent} \sim {2 \over \hbar} |V_{fi}|
$$

Whereas for incoherent transfer we must use

$$
\Gamma_{incoherent} ~=~ {2 \pi \over \hbar} |V_{fi}|^2 \rho
$$

If we've already got a coherent rate, we can turn it into an incoherent one in the following way

$$
\Gamma_{incoherent} = {2 \pi \over \hbar} |V_{fi}|^2 \rho =\Gamma_{coherent}^2\frac{\hbar\pi}{2}\rho
\label{eq:gamma_incoherent}
$$

For the density of states here we look for the energy line width for a $\sim 6 \, \rm MeV$ transition from $\rm Pd$. We can work with the following estimate for the radiative decay rate of an M2 transition that we used in the SI

$$
\Gamma_{M2}
~\sim~
2.2 \times 10^7 ~A^{2/3}~\left({\epsilon \over 1~{\rm MeV}} \right )^5
~O_{\rm Pd}^2 
~{\rm s}^{-1}
$$

This is Weisskopf modified to include a hinderance factor $O_{Pd}$ which we estimate to be 0.01. For $\epsilon \approx 6 \, \rm MeV$ and $A\approx 106$ we have 

$$
\Gamma_{M2} \sim 3.8 \times 10^8 \, \rm s^{-1}
$$

Corresponding to a state lifetime of 

$$
\tau_{M2} = \frac{1}{\Gamma_{M2}} \sim 2.6 \, \rm ns
$$

and a density of states of 

$$
\rho \sim \frac{1}{h\Gamma_{M2}}
$$

Substituting into Eq. $\ref{eq:gamma_incoherent}$ gives

$$
\Gamma_{incoherent} = \Gamma_{coherent}^2\frac{\hbar\pi}{2}\rho = \Gamma_{coherent}^2 \frac{1}{4\Gamma_{M2}} \approx \frac{\Gamma_{coherent}^2}{1.5\times 10^9}
$$

Now we can substitute $\Gamma_{coherent}$ from Eq. $\ref{eq:indirect_with_energy_exchange}$ to give us

$$
\Gamma_{D_2/(3+1)/^4He \,incoherent} \sim \frac{(5.3\times 10^6)^2}{1.5\times 10^9} \approx 18,700 \, \rm s^{-1}
$$

Note that if we don't use the large $g$ approximation and instead use the actual value for $F(g)$ for these parameters then we end up with a rate more like $2,800 \, \rm s^{-1}$.

