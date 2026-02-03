# Flow model transfer rates

During start-up when the power associated with fusion events is low, we expect to only have excitation transfer via "direct" fusion transitions that go from $\rm D_2 \rightarrow ^4He$. As things get going, contributions from "indirect" fusion transitions starts to dominate - this is when $\rm D_2 \rightarrow (3+1) \rightarrow ^4He$. We represent the transfer rates as $\Gamma_{D_2/He}$ for direct and $\Gamma_{D_2/3+1/He}$ for indirect.

## Direct fusion transitions

### Multiple transitions, single receiver

We will consider the excitation transfer from $\rm D_2$ to a single receiver state made up of four $\rm Pd$ transitions. For the sake of this calculation, we assume that there exists four palladium transitions whose combined energy matches the $\approx 24 \, \rm MeV$ fusion energy. The transfer rate has been calculated by Peter to be:
$$
\Gamma_{D_2/He}^{(0)} \sim 1.3 \times 10^2 \,
\left|1 - \eta_{D_2/^4\mathrm{He}}\eta_{P_d}\right|  \left( \frac{1\,\mathrm{MHz}}{f_A} \right)^{3/4} g^4
\sqrt{ \frac{P_D}{1\,\mathrm{W}}  } \sqrt{\frac{N_{D_2}}{N}} \sqrt{N_{^4 He}}
\,\sec^{-1} 
\label{eq:gamma_direct}
$$

> Note that we're not sure on the helium Dicke factor yet.

Here $g$ is the normalised coupling constant for the $\rm Pd$ transitions:
$$
\begin{equation}
\begin{aligned}
g
&= \frac{ |\langle \mathrm{Pd}^* | a_z | \mathrm{Pd} \rangle| \, c \,
\sqrt{\langle P_{\mathrm{Pd}}^2 \rangle} }{ \epsilon}
\sqrt{N_{\mathrm{Pd}}} \\[6pt]
&= \frac{ |\langle \mathrm{Pd}^* | a_z | \mathrm{Pd} \rangle| }{ \epsilon}
\sqrt{\frac{M_{Pd}c^2 P_D \tau_A}{N}}
\sqrt{N_{\mathrm{Pd}}} \\[6pt]
&= \frac{ |\langle \mathrm{Pd}^* | a_z | \mathrm{Pd} \rangle| \,
\sqrt{M_{Pd}c^2 P_D \tau_A} }{ \epsilon}
\sqrt{\frac{N_{\mathrm{Pd}}}{N}} .
\end{aligned}
\end{equation}
$$
Technically we should have  $g_1g_2g_3g_4$ instead of $g^4$ to allow for the possibility of four different $\rm Pd$ transitions. We will however treat them in an averaged sense for now so that $\epsilon = 6.75 \, \rm MeV \approx 24 \, \rm MeV / 4$.


Peter averages over all the possibe $\rm Pd$ transitions to get 

$$
\bar \Upsilon = |\langle \mathrm{Pd}^* | a_z | \mathrm{Pd} \rangle|^2 \frac{M_{Pd}c^2}{\epsilon} \approx 8.7 \times 10^{-8}
$$

This $\bar\Upsilon$ needs to be divided by four - the number of transitions.

We can connect $\bar \Upsilon$ to $g$ through:
$$
\frac{|\langle \mathrm{Pd}^* | a_z | \mathrm{Pd} \rangle| \sqrt{M_{Pd}c^2}}{\epsilon} = \sqrt{\frac{\bar \Upsilon}{4 \epsilon}} \approx \sqrt{\frac{8.7 \times 10^{-8}}{4\times6.75 \times 10^6 \times 1.6\times 10^{-19}\, \rm J}} \approx 142
$$


This gives

$$
g \approx \ 142 \sqrt{\frac{P_D \tau_A}{1 \, \rm J}} \sqrt{\frac{N_{\mathrm{Pd}}}{N}}
$$

The phonon lifetime is given by

$$
\tau_A = 10^{-12} \left( \frac{10^{-7} f_A}{1 \, \text{MHz}} \right)^{-3/2} \, \text{sec}
$$

For the transfer rate we need $g^4$:

$$
g^4 \approx 4\times 10^8 \left(\frac{P_D }{1\, \rm W}\right)^2 10^{-24}\left(\frac{1 \, \rm  MHz}{10^{-7}f_A}\right)^3 \left(\frac{N_{\mathrm{Pd}}}{N}\right)^2 
=  4\times 10^5 \left(\frac{P_D}{1\, \rm W}\right)^2 \left(\frac{1 \, \rm  MHz}{f_A}\right)^3 \left(\frac{N_{\mathrm{Pd}}}{N}\right)^2
$$

Substituting back into Eq. $\ref{eq:gamma_direct}$ gives:

$$
\Gamma_{D_2/He}^{(0)} \sim 5.2 \times 10^7 \,
\left|1 - \eta_{D_2/^4\mathrm{He}}\eta_{P_d}\right|  \left( \frac{1\,\mathrm{MHz}}{f_A} \right)^{3.75}
\left(\frac{P_D}{1\,\mathrm{W}}  \right)^{2.5} \sqrt{\frac{N_{D_2}}{N}} \left(\frac{N_{\mathrm{Pd}}}{N}\right)^2\sqrt{N_{^4 He}}
\,\sec^{-1}
\label{eq:gamma_direct2}
$$

The asymmetry factor $\left|1 - \eta_{D_2/^4\mathrm{He}}\eta_{P_d}\right|$ arrises due to fusion loss and for this "direct" fusion transition Pete calculated this to be:

$$
\left|1 - \eta_{D_2/^4\mathrm{He}}\eta_{P_d}\right| \approx \frac{1}{80}
$$
Substituting back into Eq. $\ref{eq:gamma_direct2}$ rate we get:

$$
\Gamma_{D_2/He}^{(0)} \sim  6.5\times 10^5  \left( \frac{1\,\mathrm{MHz}}{f_A} \right)^{3.75}
\left(\frac{P_D}{1\,\mathrm{W}}  \right)^{2.5} \sqrt{\frac{N_{D_2}}{N}} \left(\frac{N_{\mathrm{Pd}}}{N}\right)^2\sqrt{N_{^4 He}}
\,\sec^{-1}
\label{eq:gamma_direct3}
$$

Let's use numbers from the SI, and setting $N_{^4He}=1$ for now:

$$
f_A \sim 5 \, \rm MHz, \quad P_D \sim 1 \, W, \quad \frac{N_{D_2}}{N} \sim 0.25 \times \frac{1}{9}, \quad \frac{N_{{Pd}}}{N} \sim 0.25
$$

The rate then evaluates to:

$$
\Gamma_{D_2/He}^{(0)} \approx 16 \sec^{-1}
$$

### Multiple transitions, multiple receivers

We will now consider the excitation transfer from $\rm D_2$ to many receiver states made up of four $\rm Pd$ transitions. Whereas in the previous section we imagined just one state that was perfectly matched to the fusion energy, now we allow states that are not perfectly matched. Such "off-resonant" states can participate in the excitation transfer because the difference in energy can be made up through rapid energy exchange between the $\rm Pd$ and the phonons. Because we have many states that now can contribute to the transfer, the rate goes up according to:

$$
\Gamma_{D_2/He} \sim \Gamma_{D_2/He}^{(0)} \, \rho \,\delta \epsilon
\label{eq:gamma_direct_energyx}
$$

 Where $\rho$ is the density of palladium excited states and $\delta \epsilon$ is the energy exchanged per "channel"

> I'm still not quite sure what we mean by channels here

Peter has calculated the density of states to be

$$
\rho \approx 4\times 10^7 \, \rm eV^{-1}
$$

which works out at one state every $26 \, \rm neV$.

For the energy exchanged with acoustic phonons, Peter ha calculated this to be:

$$
\begin{equation}
\begin{aligned}
\delta \epsilon
&\approx \hbar \omega_A \, \Delta n_{AA} \\
&= \hbar \omega_A
\left( 2 n_j \bar{Y}_j |e^{(A)}|^2 n_A \right)^{1/3} \\
&= 8.4 \, |e^{(A)}|^{2/3} \, (n_j)^{1/3}
\left( \frac{P_D^{(A)}}{1\,\mathrm{W}} \right)^{1/3}
\left( \frac{f_A}{1\,\mathrm{MHz}} \right)^{1/6}
\;\mathrm{meV}.
\end{aligned}
\end{equation}
$$

I don't know exactly what to put for $|e^{(A)}|$ (which I think it the polarisation vector). I'm going to set it equal to one for now. $n_j$ is the number of transitions which is four for us.  Using the SI parameters for power and frequency we have:

$$
\delta \epsilon\approx 17 \, \rm meV
$$


This gives us an transfer rate of:
$$
\Gamma_{D_2/He} \sim \Gamma_{D_2/He}^{(0)}  \times 6.8\times 10^5 \sim 10^7 \, \sec^{-1}
$$
