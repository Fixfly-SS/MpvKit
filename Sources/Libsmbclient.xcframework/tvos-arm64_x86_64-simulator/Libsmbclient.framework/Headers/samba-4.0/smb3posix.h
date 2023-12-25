/* header auto-generated by pidl */

#ifndef _PIDL_HEADER_smb3posix
#define _PIDL_HEADER_smb3posix

#include <stdint.h>

#include <core/ntstatus.h>

#include <gen_ndr/security.h>
#ifndef _HEADER_smb3posix
#define _HEADER_smb3posix

struct smb3_posix_cc_info {
	uint32_t nlinks;
	uint32_t reparse_tag;
	uint32_t posix_perms;
	struct dom_sid owner;
	struct dom_sid group;
}/* [flag(LIBNDR_FLAG_NOALIGN),public] */;

struct smb3_file_posix_information {
	NTTIME creation_time;
	NTTIME last_access_time;
	NTTIME last_write_time;
	NTTIME change_time;
	uint64_t end_of_file;
	uint64_t allocation_size;
	uint32_t file_attributes;
	uint64_t inode;
	uint32_t device;
	uint32_t reserved;
	struct smb3_posix_cc_info cc;
}/* [flag(LIBNDR_FLAG_NOALIGN),public] */;

#endif /* _HEADER_smb3posix */
#endif /* _PIDL_HEADER_smb3posix */