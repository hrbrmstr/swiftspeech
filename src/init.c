#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

extern SEXP part_of_speech(SEXP);

static const R_CallMethodDef CallEntries[] = {
  {"part_of_speech", (DL_FUNC) &part_of_speech, 1},
  {NULL, NULL, 0}
};

void R_init_daybreak(DllInfo *dll) {
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
