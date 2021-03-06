# ==============================================================================
# SPEC - STRING FOUNDATION - LIKE SPEC
# frozen_string_literal: true
# ==============================================================================
describe "[ Like Methods ]" do

  # ----------------------------------------------------------------------------
  # Check Whether A String Is Integer
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER A STRING IS INTEGER ::" do
    let(:string) { nil }
    subject { string.like_i? }

    context "when a string is an integral number," do
      context "it is a positive number," do
        let(:string) { "123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-5" }

        it { is_expected.to be true }
      end
    end

    context "when a string is a floating point number," do
      context "it is a positive number," do
        let(:string) { "0.123" }

        it { is_expected.to be false }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+0.123" }

        it { is_expected.to be false }
      end

      context "it is a negative number," do
        let(:string) { "-5.123" }

        it { is_expected.to be false }
      end
    end

    context "when a string is a floating point number without an integer," do
      context "it is a positive number," do
        let(:string) { ".123" }

        it { is_expected.to be false }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+.123" }

        it { is_expected.to be false }
      end

      context "it is a negative number," do
        let(:string) { "-.123" }

        it { is_expected.to be false }
      end
    end

    context "when a string a number has leading zeros," do
      context "it is a positive number," do
        let(:string) { "00000123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+00000123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-00000123" }

        it { is_expected.to be true }
      end
    end

    context "when a string is 0," do
      let(:string) { "0" }

      it { is_expected.to be true }
    end

    context "when a string is 0.0," do
      let(:string) { "0.0" }

      it { is_expected.to be false }
    end

    context "when a string is not a number," do
      let(:string) { "abc" }

      it { is_expected.to be false }
    end
  end

  # ----------------------------------------------------------------------------
  # Check Whether A String Is Float
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER A STRING IS FLOAT ::" do
    let(:string) { nil }
    subject { string.like_f? }

    context "when a string is an integral number," do
      context "it is a positive number," do
        let(:string) { "123" }

        it { is_expected.to be false }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+123" }

        it { is_expected.to be false }
      end

      context "it is a negative number," do
        let(:string) { "-5" }

        it { is_expected.to be false }
      end
    end

    context "when a string is a floating point number," do
      context "it is a positive number," do
        let(:string) { "0.123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+0.123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-5.123" }

        it { is_expected.to be true }
      end
    end

    context "when a string is a floating point number without an integer," do
      context "it is a positive number," do
        let(:string) { ".123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+.123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-.123" }

        it { is_expected.to be true }
      end
    end

    context "when a string a number has leading zeros," do
      context "it is a positive number," do
        let(:string) { "00000123" }

        it { is_expected.to be false }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+00000123" }

        it { is_expected.to be false }
      end

      context "it is a negative number," do
        let(:string) { "-00000123" }

        it { is_expected.to be false }
      end
    end

    context "when a string is 0," do
      let(:string) { "0" }

      it { is_expected.to be false }
    end

    context "when a string is 0.0," do
      let(:string) { "0.0" }

      it { is_expected.to be true }
    end

    context "when a string is not a number," do
      let(:string) { "abc" }

      it { is_expected.to be false }
    end
  end
end
