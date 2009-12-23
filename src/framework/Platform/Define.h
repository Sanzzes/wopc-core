/*
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * Copyright (C) 2009 IxiliumEmu <http://www.ixi-soft.com/>
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

#ifndef IXILIUM_DEFINE_H
#define IXILIUM_DEFINE_H

#include <sys/types.h>

#include <ace/Basic_Types.h>
#include <ace/ACE_export.h>

#include "Platform/CompilerDefs.h"

#define IXILIUM_LITTLEENDIAN 0
#define IXILIUM_BIGENDIAN    1

#if !defined(IXILIUM_ENDIAN)
#  if defined (ACE_BIG_ENDIAN)
#    define IXILIUM_ENDIAN IXILIUM_BIGENDIAN
#  else //ACE_BYTE_ORDER != ACE_BIG_ENDIAN
#    define IXILIUM_ENDIAN IXILIUM_LITTLEENDIAN
#  endif //ACE_BYTE_ORDER
#endif //IXILIUM_ENDIAN

#if PLATFORM == PLATFORM_WINDOWS
#  define IXILIUM_EXPORT __declspec(dllexport)
#  define IXILIUM_LIBRARY_HANDLE HMODULE
#  define IXILIUM_LOAD_LIBRARY(a) LoadLibrary(a)
#  define IXILIUM_CLOSE_LIBRARY FreeLibrary
#  define IXILIUM_GET_PROC_ADDR GetProcAddress
#  define IXILIUM_IMPORT __cdecl
#  define IXILIUM_SCRIPT_EXT ".dll"
#  define IXILIUM_SCRIPT_NAME "Scripts"
#  define IXILIUM_PATH_MAX MAX_PATH
#else //PLATFORM != PLATFORM_WINDOWS
#  define IXILIUM_LIBRARY_HANDLE void*
#  define IXILIUM_EXPORT export
#  define IXILIUM_LOAD_LIBRARY(a) dlopen(a,RTLD_NOW)
#  define IXILIUM_CLOSE_LIBRARY dlclose
#  define IXILIUM_GET_PROC_ADDR dlsym
#  if defined(__APPLE_CC__) && defined(BIG_ENDIAN)
#    define IXILIUM_IMPORT __attribute__ ((longcall))
#  elif defined(__x86_64__)
#    define IXILIUM_IMPORT
#  else
#    define IXILIUM_IMPORT __attribute__ ((cdecl))
#  endif //__APPLE_CC__ && BIG_ENDIAN
#  if defined(__APPLE_CC__)
#    define IXILIUM_SCRIPT_EXT ".dylib"
#    if defined(DO_SCRIPTS)
#      define IXILIUM_SCRIPT_NAME "../lib/libixiliumscript"
#    else
#      define IXILIUM_SCRIPT_NAME "../lib/libixiliuminterface"
#    endif // DO_SCRIPTS
#  else
#    define IXILIUM_SCRIPT_EXT ".so"
#    if defined(DO_SCRIPTS)
#      define IXILIUM_SCRIPT_NAME "libixiliumscript"
#    else
#      define IXILIUM_SCRIPT_NAME "libixiliuminterface"
#    endif // DO_SCRIPTS
#  endif //__APPLE_CC__
#  define IXILIUM_PATH_MAX PATH_MAX
#endif //PLATFORM

#if PLATFORM == PLATFORM_WINDOWS
#  ifdef IXILIUM_WIN32_DLL_IMPORT
#    define SCRIPTS_DLL_DECL __declspec(dllimport)
#  else //!IXILIUM_WIN32_DLL_IMPORT
#    ifdef IXILIUM_WIND_DLL_EXPORT
#      define SCRIPTS_DLL_DECL __declspec(dllexport)
#    else //!IXILIUM_WIND_DLL_EXPORT
#      define SCRIPTS_DLL_DECL
#    endif //IXILIUM_WIND_DLL_EXPORT
#  endif //IXILIUM_WIN32_DLL_IMPORT
#else //PLATFORM != PLATFORM_WINDOWS
#  define SCRIPTS_DLL_DECL
#endif //PLATFORM

#if PLATFORM == PLATFORM_WINDOWS
#  define IXILIUM_DLL_SPEC __declspec(dllexport)
#  ifndef DECLSPEC_NORETURN
#    define DECLSPEC_NORETURN __declspec(noreturn)
#  endif //DECLSPEC_NORETURN
#else //PLATFORM != PLATFORM_WINDOWS
#  define IXILIUM_DLL_SPEC
#  define DECLSPEC_NORETURN
#endif //PLATFORM

#if !defined(DEBUG)
#  define IXILIUM_INLINE inline
#else //DEBUG
#  if !defined(IXILIUM_DEBUG)
#    define IXILIUM_DEBUG
#  endif //IXILIUM_DEBUG
#  define IXILIUM_INLINE
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

#if !defined(DEBUG) && !defined(IXILIUM_DEBUG)
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

#endif //IXILIUM_DEFINE_H

