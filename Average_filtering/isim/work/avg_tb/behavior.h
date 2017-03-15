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

#ifndef H_Work_avg_tb_behavior_H
#define H_Work_avg_tb_behavior_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_avg_tb_behavior: public HSim__s6 {
public:


  char *t25;
  char *t26;
  char *t27;
  char *t28;
  char *t29;
  char *t30;
  char *t31;
  char *t32;
  char *t33;
    HSim__s1 SA[12];
    Work_avg_tb_behavior(const char * name);
    ~Work_avg_tb_behavior();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_avg_tb_behavior(const char *name);

#endif
