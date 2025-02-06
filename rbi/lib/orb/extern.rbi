# typed: strong

module Orb
  module Extern
    abstract!

    sig { params(blk: T.proc.void).void }
    def sorbet!(&blk); end
  end
end
