# Copyright (C) 2014 Richard Wiedenhöft <richard.wiedenhoeft@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

if (NOT DEFINED INSTALL_PREFIX)
	set (INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")
endif ()

if (NOT DEFINED INSTALL_EXEC_PREFIX)
	set (INSTALL_EXEC_PREFIX "${INSTALL_PREFIX}")
endif ()

if (NOT DEFINED INSTALL_BINDIR)
	set (INSTALL_BINDIR "${INSTALL_EXEC_PREFIX}/bin")
endif ()

if (NOT DEFINED INSTALL_SBINDIR)
	set (INSTALL_SBINDIR "${INSTALL_EXEC_PREFIX}/sbin")
endif ()

if (NOT DEFINED INSTALL_LIBDIR)
	set (INSTALL_LIBDIR "${INSTALL_EXEC_PREFIX}/lib")
endif ()

if (NOT DEFINED INSTALL_LIBEXECDIR)
	set (INSTALL_LIBEXECDIR "${INSTALL_EXEC_PREFIX}/libexec")
endif ()

if (NOT DEFINED INSTALL_SYSCONFDIR)
	set (INSTALL_SYSCONFDIR "${INSTALL_PREFIX}/etc")
endif ()

if (NOT DEFINED INSTALL_SHAREDSTATEDIR)
	set (INSTALL_SHAREDSTATEDIR "${INSTALL_PREFIX}/com")
endif ()

if (NOT DEFINED INSTALL_LOCALSTATEDIR)
	set (INSTALL_LOCALSTATEDIR "${INSTALL_PREFIX}/var")
endif ()

if (NOT DEFINED INSTALL_RUNSTATEDIR)
	set (INSTALL_RUNSTATEDIR "${INSTALL_LOCALSTATEDIR}/run")
endif ()

if (NOT DEFINED INSTALL_INCLUDEDIR)
	set (INSTALL_INCLUDEDIR "${INSTALL_PREFIX}/include")
endif ()

if (NOT DEFINED INSTALL_DATAROOTDIR)
	set (INSTALL_DATAROOTDIR "${INSTALL_PREFIX}/share")
endif ()

if (NOT DEFINED INSTALL_DATADIR)
	set (INSTALL_DATADIR "${INSTALL_DATAROOTDIR}")
endif ()

if (NOT DEFINED INSTALL_INFODIR)
	set (INSTALL_INFODIR "${INSTALL_DATAROOTDIR}/info")
endif ()

if (NOT DEFINED INSTALL_LOCALEDIR)
	set (INSTALL_LOCALEDIR "${INSTALL_DATAROOTDIR}/locale")
endif ()

if (NOT DEFINED INSTALL_MANDIR)
	set (INSTALL_MANDIR "${INSTALL_DATAROOTDIR}/man")
endif ()

if (NOT DEFINED INSTALL_DOCDIR)
	set (INSTALL_DOCDIR "${INSTALL_DATAROOTDIR}/doc")
endif ()

if (NOT DEFINED INSTALL_HTMLDIR)
	set (INSTALL_HTMLDIR "${INSTALL_DOCDIR}")
endif ()

if (NOT DEFINED INSTALL_DVIDIR)
	set (INSTALL_DVIDIR "${INSTALL_DOCDIR}")
endif ()

if (NOT DEFINED INSTALL_PDFDIR)
	set (INSTALL_PDFDIR "${INSTALL_DOCDIR}")
endif ()

if (NOT DEFINED INSTALL_PSDIR)
	set (INSTALL_PSDIR "${INSTALL_DOCDIR}")
endif ()

# Suppress unused-warning
set (DUMMY "${INSTALL_PREFIX} ${INSTALL_EXEC_PREFIX} ${INSTALL_BINDIR} ${INSTALL_SBINDIR} ${INSTALL_LIBDIR} ${INSTALL_LIBEXECDIR} ${INSTALL_SYSCONFDIR} ${INSTALL_SHAREDSTATEDIR} ${INSTALL_LOCALSTATEDIR} ${INSTALL_RUNSTATEDIR} ${INSTALL_INCLUDEDIR} ${INSTALL_OLDINCLUDEDIR} ${INSTALL_DATAROOTDIR} ${INSTALL_DATADIR} ${INSTALL_INFODIR} ${INSTALL_LOCALEDIR} ${INSTALL_MANDIR} ${INSTALL_DOCDIR} ${INSTALL_HTMLDIR}${INSTALL_DVIDIR} ${INSTALL_PDFDIR} ${INSTALL_PSDIR}")

mark_as_advanced (DUMMY)
