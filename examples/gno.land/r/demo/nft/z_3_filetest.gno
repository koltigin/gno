// PKGPATH: gno.land/r/nft_test
package nft_test

import (
	"std"

	"gno.land/p/demo/testutils"
	"gno.land/r/demo/nft"
)

func main() {
	caller := std.GetCallerAt(1)
	addr1 := testutils.TestAddress("addr1")
	addr2 := testutils.TestAddress("addr2")
	grc721 := nft.GetToken()
	tid := grc721.Mint(caller, "NFT#1")
	println(grc721.OwnerOf(tid))
	println(addr1)
	grc721.Approve(caller, tid) // approve self.
	grc721.TransferFrom(caller, addr1, tid)
	grc721.TransferFrom(addr1, addr2, tid)
}

// Output:
// g1zur8hjter6pzguerw02rqqq0rgzysy2mg9eq2v
// g1v9jxgu33ta047h6lta047h6lta047h6l43dqc5
