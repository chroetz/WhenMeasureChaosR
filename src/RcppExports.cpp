// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// filterParticles
int filterParticles(NumericMatrix u, NumericVector y0, NumericVector y1, double sd, int deltaI);
RcppExport SEXP _WhenMeasureChaosR_filterParticles(SEXP uSEXP, SEXP y0SEXP, SEXP y1SEXP, SEXP sdSEXP, SEXP deltaISEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericMatrix >::type u(uSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y0(y0SEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y1(y1SEXP);
    Rcpp::traits::input_parameter< double >::type sd(sdSEXP);
    Rcpp::traits::input_parameter< int >::type deltaI(deltaISEXP);
    rcpp_result_gen = Rcpp::wrap(filterParticles(u, y0, y1, sd, deltaI));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_WhenMeasureChaosR_filterParticles", (DL_FUNC) &_WhenMeasureChaosR_filterParticles, 5},
    {NULL, NULL, 0}
};

RcppExport void R_init_WhenMeasureChaosR(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
