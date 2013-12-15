-- |
-- Copyright: (C) 2013 Amgen, Inc.
module H.Prelude.Reexports
  ( symbol
  , string
  , strings
  , install
  ) where

import           H.Internal.Prelude
import qualified Foreign.R as R
import qualified Language.R as LR

import           Data.Word

symbol :: MonadR m => String -> m (SEXP R.Symbol)
symbol = io . LR.symbol

install :: MonadR m => String -> m (SEXP R.Symbol)
install = io . LR.install

string :: MonadR m => String -> m (SEXP (R.Vector Word8))
string = io . LR.string

strings :: MonadR m => String -> m (SEXP (R.String))
strings = io . LR.strings
