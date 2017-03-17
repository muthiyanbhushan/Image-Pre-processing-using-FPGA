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

#ifndef H_Work_trans_behavioral_H
#define H_Work_trans_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_trans_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[6];

  HSimEnumType Tstate;
HSim__s4 Cj;
    HSim__s1 SA[12];
  char t0;
  char t1;
  char t2;
  char t3;
  char t4;
  char t5;
  char t6;
  char t7;
    Work_trans_behavioral(const char * name);
    ~Work_trans_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_trans_behavioral(const char *name);

#endif
