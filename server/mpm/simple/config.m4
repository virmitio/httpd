AC_MSG_CHECKING(if simple MPM supports this platform)
if test $forking_mpms_supported != yes; then
    AC_MSG_RESULT(no - This is not a forking platform)
elif test $ac_cv_define_APR_HAS_THREADS != yes; then
    AC_MSG_RESULT(no - APR does not support threads)
elif test $have_threaded_sig_graceful != yes; then
    AC_MSG_RESULT(no - SIG_GRACEFUL cannot be used with a threaded MPM)
elif test $ac_cv_have_threadsafe_pollset != yes; then
    AC_MSG_RESULT(no - APR_POLLSET_THREADSAFE is not supported)
else
    AC_MSG_RESULT(yes)
    APACHE_MPM_SUPPORTED(simple, yes, yes)
fi
