/*
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef WOPCCORE_DEFINE_H
#define WOPCCORE_DEFINE_H

#include <sys/types.h>

#include <ace/Basic_Types.h>
#include <ace/ACE_export.h>

#include "Platform/CompilerDefs.h"

#define WOPCCORE_LITTLEENDIAN 0
#define WOPCCORE_BIGENDIAN    1

#if !defined(WOPCCORE_ENDIAN)
#  if defined (ACE_BIG_ENDIAN)
#    define WOPCCORE_ENDIAN WOPCCORE_BIGENDIAN
#  else //ACE_BYTE_ORDER != ACE_BIG_ENDIAN
#    define WOPCCORE_ENDIAN WOPCCORE_LITTLEENDIAN
#  endif //ACE_BYTE_ORDER
#endif //WOPCCORE_ENDIAN

#if PLATFORM == PLATFORM_WINDOWS
#  define WOPCCORE_EXPORT __declspec(dllexport)
#  define WOPCCORE_LIBRARY_HANDLE HMODULE
#  define WOPCCORE_LOAD_LIBRARY(a) LoadLibrary(a)
#  define WOPCCORE_CLOSE_LIBRARY FreeLibrary
#  define WOPCCORE_GET_PROC_ADDR GetProcAddress
#  define WOPCCORE_IMPORT __cdecl
#  define WOPCCORE_SCRIPT_EXT ".dll"
#  define WOPCCORE_SCRIPT_NAME "Scripts"
#  define WOPCCORE_PATH_MAX MAX_PATH
#else //PLATFORM != PLATFORM_WINDOWS
#  define WOPCCORE_LIBRARY_HANDLE void*
#  define WOPCCORE_EXPORT export
#  define WOPCCORE_LOAD_LIBRARY(a) dlopen(a,RTLD_NOW)
#  define WOPCCORE_CLOSE_LIBRARY dlclose
#  define WOPCCORE_GET_PROC_ADDR dlsym
#  if defined(__APPLE_CC__) && defined(BIG_ENDIAN)
#    define WOPCCORE_IMPORT __attribute__ ((longcall))
#  elif defined(__x86_64__)
#    define WOPCCORE_IMPORT
#  else
#    define WOPCCORE_IMPORT __attribute__ ((cdecl))
#  endif //__APPLE_CC__ && BIG_ENDIAN
#  if defined(__APPLE_CC__)
#    define WOPCCORE_SCRIPT_EXT ".dylib"
#    if defined(DO_SCRIPTS)
#      define WOPCCORE_SCRIPT_NAME "../lib/libWOPCCOREscript"
#    else
#      define WOPCCORE_SCRIPT_NAME "../lib/libWOPCCOREinterface"
#    endif // DO_SCRIPTS
#  else
#    define WOPCCORE_SCRIPT_EXT ".so"
#    if defined(DO_SCRIPTS)
#      define WOPCCORE_SCRIPT_NAME "libWOPCCOREscript"
#    else
#      define WOPCCORE_SCRIPT_NAME "libWOPCCOREinterface"
#    endif // DO_SCRIPTS
#  endif //__APPLE_CC__
#  define WOPCCORE_PATH_MAX PATH_MAX
#endif //PLATFORM

#if PLATFORM == PLATFORM_WINDOWS
#  ifdef WOPCCORE_WIN32_DLL_IMPORT
#    define SCRIPTS_DLL_DECL __declspec(dllimport)
#  else //!WOPCCORE_WIN32_DLL_IMPORT
#    ifdef WOPCCORE_WIND_DLL_EXPORT
#      define SCRIPTS_DLL_DECL __declspec(dllexport)
#    else //!WOPCCORE_WIND_DLL_EXPORT
#      define SCRIPTS_DLL_DECL
#    endif //WOPCCORE_WIND_DLL_EXPORT
#  endif //WOPCCORE_WIN32_DLL_IMPORT
#else //PLATFORM != PLATFORM_WINDOWS
#  define SCRIPTS_DLL_DECL
#endif //PLATFORM

#if PLATFORM == PLATFORM_WINDOWS
#  define WOPCCORE_DLL_SPEC __declspec(dllexport)
#  ifndef DECLSPEC_NORETURN
#    define DECLSPEC_NORETURN __declspec(noreturn)
#  endif //DECLSPEC_NORETURN
#else //PLATFORM != PLATFORM_WINDOWS
#  define WOPCCORE_DLL_SPEC
#  define DECLSPEC_NORETURN
#endif //PLATFORM

#if !defined(DEBUG)
#  define WOPCCORE_INLINE inline
#else //DEBUG
#  if !defined(WOPCCORE_DEBUG)
#    define WOPCCORE_DEBUG
#  endif //WOPCCORE_DEBUG
#  define WOPCCORE_INLINE
#endif //!DEBUG

#if COMPILER == COMPILER_GNU
#  define ATTR_NORETURN __attribute__((noreturn))
#  define ATTR_PRINTF(F,V) __attribute__ ((format (printf, F, V)))
#else //COMPILER != COMPILER_GNU
#  define ATTR_NORETURN
#  define ATTR_PRINTF(F,V)
#endif //COMPILER == COMPILER_GNU

typedef ACE_INT64 int64;
typedef ACE_INT32 int32;
typedef ACE_INT16 int16;
typedef ACE_INT8 int8;
typedef ACE_UINT64 uint64;
typedef ACE_UINT32 uint32;
typedef ACE_UINT16 uint16;
typedef ACE_UINT8 uint8;

#if COMPILER != COMPILER_MICROSOFT
typedef uint16      WORD;
typedef uint32      DWORD;
#endif //COMPILER

typedef uint64 OBJECT_HANDLE;

#if !defined(DEBUG) && !defined(WOPCCORE_DEBUG)
  #if defined(USE_MULTI_THREAD_MAP)
    #define MULTI_THREAD_MAP
  #endif
#endif

#ifdef MULTI_THREAD_MAP
#define MAP_BASED_RAND_GEN
#endif

#ifndef CLIENT_VER 
#define CLIENT_VER 313 
#endif 

#endif //WOPCCORE_DEFINE_H

