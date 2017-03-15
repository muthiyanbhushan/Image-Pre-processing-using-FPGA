////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_average_behavioral_average_H
#define H_Work_average_behavioral_average_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_average_behavioral_average: public HSim__s6 {
public:

  char *t0;
    HSim__s1 SE[12];

HSim__s4 C8;
  HSimArrayType Matrixbase;
  HSimArrayType Matrix;
    HSim__s1 SA[1];
  char *t1;
    Work_average_behavioral_average(const char * name);
    ~Work_average_behavioral_average();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_average_behavioral_average(const char *name);

#endif
