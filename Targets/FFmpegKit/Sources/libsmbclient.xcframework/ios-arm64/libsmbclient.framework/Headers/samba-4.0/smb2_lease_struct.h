/* header auto-generated by pidl */

#ifndef _PIDL_HEADER_smb2_lease_struct
#define _PIDL_HEADER_smb2_lease_struct

#include <stdint.h>

#include <core/ntstatus.h>

#ifndef _HEADER_smb2_lease_struct
#define _HEADER_smb2_lease_struct

struct smb2_lease_key {
	uint64_t data[2];
}/* [public] */;

/* bitmap smb2_lease_state */
#define SMB2_LEASE_READ ( 0x01 )
#define SMB2_LEASE_HANDLE ( 0x02 )
#define SMB2_LEASE_WRITE ( 0x04 )

struct smb2_lease {
	struct smb2_lease_key lease_key;
	uint32_t lease_state;
	uint32_t lease_flags;
	uint64_t lease_duration;
	struct smb2_lease_key parent_lease_key;
	uint16_t lease_version;
	uint16_t lease_epoch;
}/* [public] */;

#endif /* _HEADER_smb2_lease_struct */
#endif /* _PIDL_HEADER_smb2_lease_struct */
