#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
int filterParticles(
    NumericMatrix u, NumericVector y0, NumericVector y1, double sd, int deltaI
) {
  double maxW = -1;
  int maxIdx;
  double w;
  int n = u.nrow(), d = u.ncol();
  double dst;
  double v;
  for (int i = 0; i < n - deltaI; ++i) {
    dst = 0;
    for (int j = 0; j < d; ++j) {
      v = u(i, j) - y0(j);
      dst += v*v;
    }
    w = exp(-dst/sd/sd);

    if (w < maxW) continue;

    dst = 0;
    for (int j = 0; j < d; ++j) {
      v = u(i+deltaI, j) - y1(j);
      dst += v*v;
    }
    w *= exp(-dst/sd/sd);

    if (w > maxW) {
      maxIdx = i;
      maxW = w;
    }
  }
  return maxIdx;
}

