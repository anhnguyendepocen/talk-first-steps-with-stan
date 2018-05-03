data {
  int<lower=0> N;
  int hits[N];
  int spins[N];
}
parameters {
  real<lower=0,upper=1> mu;
}
model {
  hits ~ binomial(spins, mu);          // Likelihood
  mu ~ beta(2, 2);                     // Prior
}
