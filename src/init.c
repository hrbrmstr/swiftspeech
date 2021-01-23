#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* .Call calls */
extern SEXP hey();
extern SEXP plus_one(SEXP);
extern SEXP part_of_speech(SEXP);

static const R_CallMethodDef CallEntries[] = {
  {"hey",            (DL_FUNC) &hey,            0},
  {"plus_one",       (DL_FUNC) &plus_one,       1},
  {"part_of_speech", (DL_FUNC) &part_of_speech, 1},
  {NULL, NULL, 0}
};

void R_init_daybreak(DllInfo *dll) {
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
