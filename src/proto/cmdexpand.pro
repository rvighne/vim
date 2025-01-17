/* cmdexpand.c */
int cmdline_fuzzy_complete(char_u *fuzzystr);
int nextwild(expand_T *xp, int type, int options, int escape);
char_u *ExpandOne(expand_T *xp, char_u *str, char_u *orig, int options, int mode);
void ExpandInit(expand_T *xp);
void ExpandCleanup(expand_T *xp);
void cmdline_pum_display(void);
int cmdline_pum_active(void);
void cmdline_pum_remove(void);
void cmdline_pum_cleanup(cmdline_info_T *cclp);
int cmdline_compl_startcol(void);
int showmatches(expand_T *xp, int wildmenu);
char_u *sm_gettail(char_u *s);
char_u *addstar(char_u *fname, int len, int context);
void set_cmd_context(expand_T *xp, char_u *str, int len, int col, int use_ccline);
void set_expand_context(expand_T *xp);
int expand_cmdline(expand_T *xp, char_u *str, int col, int *matchcount, char_u ***matches);
void globpath(char_u *path, char_u *file, garray_T *ga, int expand_options);
int wildmenu_translate_key(cmdline_info_T *cclp, int key, expand_T *xp, int did_wild_list);
int wildmenu_process_key(cmdline_info_T *cclp, int key, expand_T *xp);
void wildmenu_cleanup(cmdline_info_T *cclp);
void f_getcompletion(typval_T *argvars, typval_T *rettv);
/* vim: set ft=c : */
